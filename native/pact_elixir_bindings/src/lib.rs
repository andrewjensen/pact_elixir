use libc::c_char;
use std::ffi::CStr;
use std::str;

#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b
}

#[rustler::nif]
fn greet(place: &str) -> String {
    format!("Hello, {}", place)
}

#[rustler::nif]
fn version() -> String {
    // "Some version".to_string()

    let c_buf = pact_ffi::pactffi_version();
    let c_str: &CStr = unsafe { CStr::from_ptr(c_buf) };
    let str_slice: &str = c_str.to_str().unwrap();

    str_slice.to_string()
}

rustler::init!("Elixir.Pact", [add, greet, version]);
