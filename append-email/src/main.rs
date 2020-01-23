use std::env;
use std::fs::OpenOptions;
use std::io::prelude::*;
use simple_server::*;


fn main() {
    let mut args: Vec<String> = env::args().collect();
    let path = Box::new(args.remove(1));

    let server = Server::new(move |request, mut response| {
        let mut file = OpenOptions::new()
            .read(false)
            .write(true)
            .create(true)
            .append(true)
            .open(&*path).unwrap();

        match request.method() {
            &Method::POST => {
                file.write_all(request.body())?;
                file.write_all(b"\n")?;
            },
            _ => { }
        }

        Ok(response.header("Access-Control-Origin-Allow", "*").body("ok".as_bytes().to_vec())?)
    });

    server.listen("0.0.0.0", "7979");
}
