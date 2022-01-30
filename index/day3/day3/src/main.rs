use std::ascii::AsciiExt;

fn main() {
    println!("Hello, world!");

    assert_eq!(2u16.pow(4), 16);
    assert_eq!((-4i32).abs(), 4);
    let _float_num = 31415.926e-4f64;
    let _b = std::f64::INFINITY;

    assert_eq!(false as i64, 0);
    assert_eq!(true as i64, 1);

    let text = "haha this is not a test";
    let (head, tail) = text.split_at(10);

    let mut v = "hello, world".to_string();
    let s = &mut v[0..5];
    let s = unsafe { s.as_bytes_mut() };
    s[0] = 'H' as u8;
    println!("{}", v)
    // -> Hello, world

    
}
