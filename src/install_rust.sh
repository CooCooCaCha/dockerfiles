#! /bin/bash

export USER=root
export CARGO_HOME=/app/.cargo
export PATH=$PATH:/app/.cargo/bin
export RUST_ARCHIVE=rust-nightly-x86_64-unknown-linux-gnu.tar.gz
export RUST_DOWNLOAD_URL=https://static.rust-lang.org/dist/$RUST_ARCHIVE


apt-get update
apt-get install -y libssl-dev build-essential ca-certificates curl gcc libc6-dev

mkdir /rust
cd /rust

curl -fsOSL $RUST_DOWNLOAD_URL
curl -s $RUST_DOWNLOAD_URL.sha256 | sha256sum -c -
tar -C /rust -xzf $RUST_ARCHIVE --strip-components=1
rm $RUST_ARCHIVE
./install.sh
