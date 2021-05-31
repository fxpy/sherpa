#!/bin/bash
#
#Install Rust and Sherpa Ceremony hash-gen

sudo apt update && sudo apt upgrade -y
sudo apt install pkg-config build-essential libssl-dev curl jq git -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env
rustup update

git clone https://github.com/Sherpa-Cash/phase2-bn254
cd phase2-bn254/phase2

cargo run --release --bin tornado
