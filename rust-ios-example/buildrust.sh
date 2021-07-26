#!/bin/sh

cd rust

cargo lipo --release
cbindgen src/lib.rs -l c > rust.h

mkdir ../Hello-Rust/include/
mkidr ../Hello-Rust/libs/
cp rust.h ../Hello-Rust/include
cp target/aarch64-apple-ios/release/librust.a ../Hello-Rust/libs/
