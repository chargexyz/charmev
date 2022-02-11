use anyhow::*;
use keyring::AccountKeyring;
use substrate_api_client::rpc::WsRpcClient;
use substrate_api_client:: { Api, RpcClient, AccountInfo };
use std::result::Result::Ok as CoreOk;
use sp_runtime::app_crypto::sp_core::sr25519;
// use substrate_api_client::R;
use log::{debug, trace, error, log_enabled, info, Level};

use android_logger::{Config,FilterBuilder};

pub fn fetch_storage_dummy(url: String) -> Result<Vec<u8>> {
    let account_info_string: String = "AccountDataGen { free: 1152921504606846976, reserved: 0, misc_frozen: 0, fee_frozen: 0 } }".to_string();
    let account_info_byte: Vec<u8> =  account_info_string.as_bytes().to_vec();
    Ok(account_info_byte)
}

pub fn fetch_storage(url:String) -> Result<Vec<u8>> {
    android_logger::init_once(
        Config::default().with_min_level(Level::Trace));
    trace!("\n\n fetch_storage RUST hitts:: WS URL = {}", url);

    let from = AccountKeyring::Alice.pair();
    let ws_client = WsRpcClient::new(&url);
    let mut api = Api::<sr25519::Pair, _>::new(ws_client).unwrap();

    // get Alice's AccountNonce with api.get_nonce()
    let signer = AccountKeyring::Alice.pair();
    api.signer = Some(signer);
    let nonce = api.get_nonce().unwrap();
    
    info!("\n\n fetch_storage RUST hitts::  nonce = {}", nonce);

    let account_info_string: String = format!("{:?}", nonce);
    let account_info_byte: Vec<u8> =  account_info_string.as_bytes().to_vec();
    Ok(account_info_byte)
}