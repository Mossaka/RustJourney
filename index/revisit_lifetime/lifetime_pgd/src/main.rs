/*
Owning pointers: Box<T>, String, Vec
nonowning pointer: references

&e has type &T
&mut e has type &mut T
*/

use std::collections::HashMap;

type Table = HashMap<String, Vec<String>>;

fn show(table: &mut Table) {
    for (artist, works) in table {
        println!("works by {}:", artist);
        for work in works {
            println!(" {}", work);
        }
    }
}

struct S<'a> {
    r: &'a i32
}


fn main() {
    let mut table = Table::new();
    table.insert("Gesualdo".to_string(),
                 vec!["many madrigals".to_string(),
                      "Tenebrae Responsoria".to_string()]);
    table.insert("Caravaggio".to_string(),
                 vec!["The Musicians".to_string(),
                      "The Calling of St. Matthew".to_string()]);
    table.insert("Cellini".to_string(),
                 vec!["Perseus with the head of Medusa".to_string(),
                      "a salt cellar".to_string()]);

    show(&mut table);

}
