
use peaq_codec_api::request;

pub fn main() {
    // Just an example that generates "complicated" images ;)
    let storage = request::fetch_storage("wss://fn1.test.peaq.network".to_string()).unwrap();
    println!("\n\n storage:: {:?}", storage)

}