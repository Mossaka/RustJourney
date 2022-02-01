#[no_mangle]
pub extern "C" fn print_hello() {
    println!("Hello, world!!!");
}

#[no_mangle]
pub extern "C" fn print_increment_num(num: i32) {
    println!("num is {}", num + 1);
}

#[no_mangle]
pub extern "C" fn print_str(s: &str) {
    println!("num is {}", s);
}