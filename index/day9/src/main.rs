#![allow(dead_code)]

use std::collections::HashMap;

fn main() {
    println!("Hello, world!");
    let subtree_l = make_node(BTree::None, "mecha", BTree::None);
    let subtree_rl = make_node(BTree::None, "droid", BTree::None);
    let subtree_r = make_node(subtree_rl, "robot", BTree::None);
    let tree = make_node(subtree_l, "Jaeger", subtree_r);
    // Iterate over it.
    let mut v = Vec::new();
    for kind in &tree {
        v.push(*kind);
    }
    assert_eq!(v, ["mecha", "Jaeger", "droid", "robot"]);
}

struct City {
    name: String,
    population: i64,
    country: String,
}

fn sort_cities(cities: &mut Vec<City>) {
    // cities.sort(); the trait bound `City: std::cmp::Ord` is not satisfied
    cities.sort_by_key(|city| -city.population);
}

// Our simple router from scratch

struct Request {
    method: String,
    url: String,
    headers: HashMap<String, String>,
    body: Vec<u8>,
}

struct Response {
    code: u32,
    headers: HashMap<String, String>,
    body: Vec<u8>,
}

// the job of a router is simply to store a table that maps URLs to callbacks, so that the right callback can be called on demand.

// the reason for Box type is that we want to support a variety of types. no two closures, even if identical, have the same type.

type BoxedCallback = Box<Fn(&Request) -> Response>;
struct BasicRouter {
    routes: HashMap<String, BoxedCallback>,
}

impl BasicRouter {
    // create a new router
    fn new() -> BasicRouter {
        BasicRouter {
            routes: HashMap::new(),
        }
    }

    // add a route to the router
    fn add_route<C>(&mut self, url: &str, callback: C)
    where
        C: Fn(&Request) -> Response + 'static,
    {
        self.routes.insert(url.to_string(), Box::new(callback));
    }

    fn handle_request(&self, request: &Request) -> Response {
        match self.routes.get(&request.url) {
            None => not_found_response(),
            Some(callback) => callback(request),
        }
    }
}

fn not_found_response() -> Response {
    unimplemented!();
}

//--------------- Iterator ------------------//

enum BTree<T> {
    None,
    Node(Box<BNode<T>>),
}

struct BNode<T> {
    n: T,
    left: BTree<T>,
    right: BTree<T>,
}

struct BTreeIter<'a, T: 'a> {
    unvisited: Vec<&'a BNode<T>>,
}

impl<'a, T: 'a> BTreeIter<'a, T> {
    fn push_left_edge(&mut self, mut tree: &'a BTree<T>) {
        while let BTree::Node(ref node) = *tree {
            self.unvisited.push(node);
            tree = &node.left;
        }
    }
}

impl<T> BTree<T> {
    fn iter(&self) -> BTreeIter<T> {
        let mut iter = BTreeIter {
            unvisited: Vec::new(),
        };
        iter.push_left_edge(self);
        iter
    }
}

impl<'a, T: 'a> IntoIterator for &'a BTree<T> {
    type Item = &'a T;
    type IntoIter = BTreeIter<'a, T>;
    fn into_iter(self) -> Self::IntoIter {
        self.iter()
    }
}

impl<'a, T> Iterator for BTreeIter<'a, T> {
    type Item = &'a T;
    fn next(&mut self) -> Option<&'a T> {
        let node = match self.unvisited.pop() {
            None => return None,
            Some(v) => v,
        };

        self.push_left_edge(&node.right);
        Some(&node.n)
    }
}

// usage

fn make_node<T>(left: BTree<T>, n: T, right: BTree<T>) -> BTree<T> {
    BTree::Node(Box::new(BNode { left, n, right }))
}
