use std::collections::HashMap;

type Table = HashMap<String, Vec<String>>;
fn show(table: &Table) {
    for (artist, works) in table {
        println!("works by {}:", artist);
        for work in works {
            println!("  {}", work);
        }
    }
}
fn main() {
    println!("Hello, world!");
    let v = vec![
        "liberté".to_string(),
        "égalité".to_string(),
        "fraternité".to_string(),
    ];
    for mut s in v {
        s.push('!');
        println!("{}", s);
    }

    let mut v = Vec::new();
    for i in 101 .. 106 {
        v.push(i.to_string());
    }
    // 1. Pop a value off the end of the vector:
    let fifth = v.pop().unwrap();
    assert_eq!(fifth, "105");

    let mut table: Table = Table::new();
    table.insert("Gesualdo".to_string(),
                 vec!["many madrigals".to_string(),
                      "Tenebrae Responsoria".to_string()]);
    table.insert("Caravaggio".to_string(),
                 vec!["The Musicians".to_string(),
                      "The Calling of St. Matthew".to_string()]);
    table.insert("Cellini".to_string(),
                 vec!["Perseus with the head of Medusa".to_string(),
                      "a salt cellar".to_string()]);

    show(&table);

    static mut STASH: &i32 = &128;
    fn f(p: &'static i32) { 
        unsafe {
            STASH = p;
        }
    }
    static WORTH_POINTING_AT: i32 = 10000;
    f(&WORTH_POINTING_AT);
}

