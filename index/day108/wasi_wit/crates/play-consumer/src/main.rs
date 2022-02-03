wit_bindgen_rust::import!("../../wit/play.wit");
use std::fmt;

use play::*;

fn main() {
    println!("hello world!");
    assert_eq!(negate(Myboolean::True), Myboolean::False);
    println!("{}", Myboolean::True);
}

impl fmt::Display for Myboolean {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Myboolean::True => write!(f, "True"),
            Myboolean::False => write!(f, "False"),
        }
    }
}