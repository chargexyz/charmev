use anyhow::{anyhow, Result};

use crate::request;
use flutter_rust_bridge::ZeroCopyBuffer;
use log::{debug, error, log_enabled, info, Level};

//
// NOTE: Please look at https://github.com/fzyzcjy/flutter_rust_bridge/blob/master/frb_example/simple/rust/src/api.rs
// to see more types that this code generator can generate.
//

pub fn get_storage(url: String) -> Result<ZeroCopyBuffer<Vec<u8>>> {

    println!("\n\n WS URL ON RUST {}", url);
    let storage = request::fetch_storage(url);
    match storage {
        Ok(data) => Ok(ZeroCopyBuffer(data)),
        Err(e) => return Err(e)
    }
    
}

