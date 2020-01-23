PATH="$HOME/.cargo/bin:$PATH"
cd /src/
cargo build --release
/src/target/release/append-email data/emails.txt
