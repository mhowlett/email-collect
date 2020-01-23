FROM nginx:1.17.8

RUN apt-get update
RUN apt-get install --assume-yes curl ca-certificates
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rs.sh
RUN chmod a+x rs.sh
RUN ./rs.sh -y
RUN PATH="$HOME/.cargo/bin:$PATH"; curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
