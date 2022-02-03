use std::{
    collections::HashMap,
    process::{self, Command},
};

const WIT_BINDGEN_REPO: &str = "https://github.com/bytecodealliance/wit-bindgen";
const WIT_BINDGEN_REVISION: &str = "2e654dc82b7f9331719ba617a36ed5967b2aecb0";

const PLAY_IMPLA: &str = "crates/play-implA";
const PLAY_CONSUMER: &str = "crates/play-consumer";

const WIT_DIRECTORY: &str = "wit/*";

fn main() {
    println!("cargo:rerun-if-changed={}", WIT_DIRECTORY);
    println!("cargo:rerun-if-changed={}/src/lib.rs", PLAY_IMPLA);
    // println!("cargo:rerun-if-changed={}/src/lib.rs", NN_TEST);
    // println!("cargo:rerun-if-changed={}/src/lib.rs", CACHE_AZURE);
    // println!("cargo:rerun-if-changed={}/src/lib.rs", CACHE_FS);

    check_tools();

    cargo_wasi_build(PLAY_IMPLA);
    cargo_wasi_build(PLAY_CONSUMER);
    // cargo_wasi_build(PLAY);

    // cargo_wasi_build(HTTP_RUST_TEST);
    // cargo_wasi_build(CACHE_RUST_TEST);
    // cargo_wasi_build(LOG_RUST_TEST);
    // cargo_wasi_build(NN_TEST);


    // wasi_sdk_make(CACHE_CPP_TEST);

    make_link(PLAY_CONSUMER);
    // make_link(CACHE_CPP_TEST);
}

fn cargo_wasi_build(dir: &str) {
    run(
        vec!["cargo", "build", "--target", "wasm32-wasi", "--release"],
        Some(dir),
        None,
    );
}

fn wasi_sdk_make(dir: &str) {
    run(vec!["make", "bindgen", "build"], Some(dir), None)
}

fn make_link(dir: &str) {
    run(vec!["make", "link"], Some(dir), None)
}

fn check_tools() {
    match process::Command::new("wit-bindgen").spawn() {
        Ok(_) => eprintln!("wit-bindgen already installed"),
        Err(_) => {
            println!("cannot find wit-bindgen, attempting to install");
            run(
                vec![
                    "cargo",
                    "install",
                    "wit-bindgen-cli",
                    "--git",
                    WIT_BINDGEN_REPO,
                    "--rev",
                    WIT_BINDGEN_REVISION,
                ],
                None,
                None,
            );
        }
    };

    match process::Command::new("wasmlink").spawn() {
        Ok(_) => eprintln!("wasmlink already installed"),
        Err(_) => {
            println!("cannot find wasmlink, attempting to install");
            run(
                vec![
                    "cargo",
                    "install",
                    "wasmlink-cli",
                    "--git",
                    WIT_BINDGEN_REPO,
                    "--rev",
                    WIT_BINDGEN_REVISION,
                ],
                None,
                None,
            );
        }
    };
}

fn run<S: Into<String> + AsRef<std::ffi::OsStr>>(
    args: Vec<S>,
    dir: Option<S>,
    env: Option<HashMap<S, S>>,
) {
    let mut cmd = Command::new(get_os_process());
    cmd.stdout(process::Stdio::piped());
    cmd.stderr(process::Stdio::piped());

    if let Some(dir) = dir {
        cmd.current_dir(dir.into());
    };

    if let Some(env) = env {
        for (k, v) in env {
            cmd.env(k, v);
        }
    };

    cmd.arg("-c");
    cmd.arg(
        args.into_iter()
            .map(Into::into)
            .collect::<Vec<String>>()
            .join(" "),
    );

    let output = cmd.output().unwrap();
    let code = output.status.code().unwrap();
    if code != 0 {
        println!("{:#?}", std::str::from_utf8(&output.stderr).unwrap());
        println!("{:#?}", std::str::from_utf8(&output.stdout).unwrap());
        // just fail
        assert_eq!(0, code);
    }
}

fn get_os_process() -> String {
    if cfg!(target_os = "windows") {
        String::from("powershell.exe")
    } else {
        String::from("/bin/bash")
    }
}
