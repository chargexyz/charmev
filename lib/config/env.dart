class Env {
  Env._();

  static const String importString = 'Import';
  static const String startCharging = 'Start Charging Session';
  static const String stopCharging = 'Stop Charging Session';
  static const String scanProviderDID = "Scan Provider DID";
  static const String scanQRCode = "Scan QR Code";
  static const String authorizePayment = "Authorize Payment";
  static const String logout = "Logout";
  static const String account = "Account";
  static const String fullyCharged = "Fully Charged";
  static const String charged = "Charged";
  static const String editAccount = "Edit Account";
  static const String pk = "pk";
  static const String sk = "sk";
  static const String address = "address";
  static const String did = "did";
  static const String accountPrefKey = "_account_";
  static const String nodePrefKey = "_nodes_";
  static const String appName = "CharmEv";
  static const String eventExplorer = "Event Explorer";
  static const String transactionCompleted = "Transaction Completed";
  static const String fetchingData = "Fetching Provider DID Details...";
  static const String invalidProviderDid = "Invalid Provider DID";
  static const String providerDidNotFound = "Provider DID Details not Found";
  static const String storageKeyGenError = "Storage key creation failed";
  static const String requestingService = "Requesting service from station...";
  static const String serviceRequestFailed =
      "Service request failed. Please try again...";
  static const String serviceRequested =
      "Service requested. Waiting for station response...";
  static const String stoppingCharge = "Stopping charging session...";
  static const String stoppingChargeFailed =
      "Stopping charging session Failed. Please try again.";
  static const String urlError =
      "Connection unreacheable. Please try check URL.";
  static const String stoppingChargeSent =
      "Stop Requested. Waiting for station to send fees...";
  static const String creatingTransaction = "Creating transactions...";
  static const String approvingRefundTransaction =
      "Approving Refund transactions...";
  static const String approvingSpentTransaction =
      "Approving Station transactions...";
  static const String approvingRefundTransactionFailed =
      "Approving Refund transaction Failed";
  static const String approvingSpentTransactionFailed =
      "Approving Station transaction Failed";
  static const String creatingMultisigWallet = "Creating Multisig wallet...";
  static const String creatingMultisigWalletFailed =
      "Multisig wallet creation failed";
  static const String fundingMultisigWallet = "Funding Multisig wallet...";
  static const String fundingMultisigWalletFailed =
      "Multisig wallet funding failed";
  static const String stopUrlNotSet =
      "Station charge Stop URL not set. You won't be able to stop a charging session.";
  static const String serviceDeliveredEvent = "ServiceDelivered";
  static const String serviceRequestedEvent = "ServiceRequested";
  static const String extrinsicSuccessEvent = "ExtrinsicSuccess";
  static const String extrinsicFailedEvent = "ExtrinsicFailed";
  static const String approved = "Approved";
  static const String peaqTestnet = "wss://fn1.test.peaq.network";
  // static const String peaqTestnet = "wss://c14a-102-91-4-52.ngrok.io";
  static const String scaleCodecBaseURL = "https://codec.test.peaq.network";
  // static const String scaleCodecBaseURL =
  // "https:///955c-197-210-70-117.ngrok.io";
  static const String eventURL = "/events";
  static const String storageURL = "/storage";
  static const String multisigURL = "/multisig";
  static const String transferURL = "/transfer";
  static const String transactionURL = "/transaction";
}
