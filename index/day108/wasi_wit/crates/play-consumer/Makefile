WIT_BINDGEN   ?= wit-bindgen
WASMLINK      ?= wasmlink

link: link-fs

link-fs:
	$(WASMLINK) target/wasm32-wasi/release/play-consumer.wasm \
	--interface play=../../wit/play.wit \
	--profile wasmtime \
	--module play=../play-implA/target/wasm32-wasi/release/play_implA.wasm \
	--output ../../play_linked.wasm
