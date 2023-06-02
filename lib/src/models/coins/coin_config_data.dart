part of 'coin_config.dart';

/// A class that represents the coin configuration. It is concerned only with
/// the data of the coin configuration, and not with the logic we apply to it.
interface class CoinConfigData {
  CoinConfigData({
    required this.coin,
    required this.type,
    required this.name,
    this.coinpaprikaId,
    this.coingeckoId,
    this.livecoinwatchId,
    required this.explorerUrl,
    this.explorerTxUrl,
    this.explorerAddressUrl,
    required this.supported,
    required this.active,
    required this.isTestnet,
    required this.currentlyEnabled,
    required this.walletOnly,
    required this.fullName,
    this.rpcport,
    required this.mm2,
    required this.chainId,
    required this.requiredConfirmations,
    required this.avgBlocktime,
    required this.decimals,
    required this.protocol,
    required this.derivationPath,
    required this.contractAddress,
    required this.parentCoin,
    required this.swapContractAddress,
    required this.nodes,
    required this.signMessagePrefix,
    this.orderbookTicker,
    this.requiresNotarization = false,
    this.segwit = false,
  });

  factory CoinConfigData.fromJson(Map<String, dynamic> json) {
    return CoinConfigData(
      coin: json['coin'] as String,
      type: CoinTypeEnum.parseCoinType(json['type'] as String),
      name: json['name'] as String,
      coinpaprikaId: json['coinpaprika_id'] as String?,
      coingeckoId: json['coingecko_id'] as String?,
      livecoinwatchId: json['livecoinwatch_id'] as String?,
      explorerUrl: json['explorer_url'] as String,
      explorerTxUrl: json['explorer_tx_url'] as String?,
      explorerAddressUrl: json['explorer_address_url'] as String?,
      supported: List.from(json['supported'] as List),
      active: json['active'] as bool,
      isTestnet: json['is_testnet'] as bool,
      currentlyEnabled: json['currently_enabled'] as bool,
      walletOnly: json['wallet_only'] as bool,
      fullName: json['fname'] as String,
      rpcport: json['rpcport'] as int?,
      mm2: json['mm2'] as int,
      chainId: json['chain_id'] as int,
      requiredConfirmations: json['required_confirmations'] as int,
      avgBlocktime: json['avg_blocktime'] as double,
      decimals: json['decimals'] as int,
      protocol: CoinProtocol.fromJson(json['protocol'] as Map<String, dynamic>),
      derivationPath: json['derivation_path'] as String,
      contractAddress: json['contract_address'] as String,
      parentCoin: json['parent_coin'] as String,
      swapContractAddress: json['swap_contract_address'] as String,
      nodes: List<CoinNode>.from(
        (json['nodes'] as List).map(
          (e) => CoinNode.fromJson(e as Map<String, dynamic>),
        ),
      ),
      signMessagePrefix: json['sign_message_prefix'] as String,
      orderbookTicker: json['orderbook_ticker'] as String?,
      requiresNotarization: json['requires_notarization'] as bool,
      segwit: (json['segwit'] as bool?) ?? false,
    );
  }

  /// [coin] - Ticker of the coin/token. If the coin is a token, use COIN-PROTOCOL
  /// as ticker, for example, USDC-BEP20.
  String coin;

  // TODO: Create a method which maps the suffixes to the correct CoinType.

  CoinType type;
  String name;

  /// [fullName] - The full name of the coin/token.
  String fullName;

  /// [mm2] - Indicates trading compatibility with AtomicDEX API. A value of 1 indicates
  /// compatibility while 0 indicates incompatibility. Non-compatible coins may
  /// still be listed as wallet only in AtomicDEX apps.
  int mm2;

  /// [requiredConfirmations] - The number of confirmations AtomicDEX will wait
  /// for during the swap. Defaults to 1. Be aware that this setting affects the
  /// security of the atomic swap and adjust as necessary for coins vulnerable to 51% attacks.
  int requiredConfirmations;

  /// [requiresNotarization] - If set to true, AtomicDEX will wait for a
  /// notarization when sending transactions during a swap. This is applicable
  /// for coins protected by dPoW. Defaults to false. If true,
  /// "requiredConfirmations" must be set to 2 or higher.
  final bool requiresNotarization;

  /// [decimals] - Defines the number of digits after the decimal point to display
  /// the orderbook amounts, balance, and the value of inputs for order creation
  /// or a withdraw transaction. Default value for a UTXO type coin (Bitcoin
  /// Protocol) is 8 and for a ERC20 Token is 18. Incorrect values can lead to
  /// unintended consequences.
  final int decimals;

  /// [protocol] - Contains the coin protocol "type" (UTXO, ETH, etc.) and specific
  /// protocol configuration in a "protocol_data" object of arbitrary format.
  CoinProtocol protocol;

  /// [orderbookTicker] - If set, coins with the same value will share the same
  /// orderbook. For instance, if BTC-Segwit and BTC-BEP20 are set with
  /// "orderbookTicker":"BTC", the same orderbook is returned for KMD/BTC,
  /// KMD/BTC-BEP20 and KMD/BTC-Segwit pairs.
  final String? orderbookTicker;

  /// [signMessagePrefix] - Optional, required to allow for message signing in
  /// AtomicDEX API. Usually found within a project's Github repository and
  /// follows a standard format like "Komodo Signed Message:\n".
  final String signMessagePrefix;

  final String? coinpaprikaId;

  /// [segwit] - True if the coin is a segwit coin or if the coin has a segwit
  /// variant. False otherwise.
  final bool segwit;

  String? coingeckoId;
  String? livecoinwatchId;
  String explorerUrl;
  String? explorerTxUrl;
  String? explorerAddressUrl;
  List supported;
  bool active;
  bool isTestnet;
  bool currentlyEnabled;
  bool walletOnly;
  int? rpcport;
  int chainId;
  double avgBlocktime;
  String derivationPath;
  String contractAddress;
  String parentCoin;
  String swapContractAddress;
  List<CoinNode> nodes;

  Map<String, dynamic> toJson() {
    return {
      'coin': coin,
      'type': type.toString().split('.').last,
      'name': name,
      'coinpaprika_id': coinpaprikaId,
      'coingecko_id': coingeckoId,
      'livecoinwatch_id': livecoinwatchId,
      'explorer_url': explorerUrl,
      'explorer_tx_url': explorerTxUrl,
      'explorer_address_url': explorerAddressUrl,
      'supported': supported,
      'active': active,
      'is_testnet': isTestnet,
      'currently_enabled': currentlyEnabled,
      'wallet_only': walletOnly,
      'fname': fullName,
      'rpcport': rpcport,
      'mm2': mm2,
      'chain_id': chainId,
      'required_confirmations': requiredConfirmations,
      'avg_blocktime': avgBlocktime,
      'decimals': decimals,
      'protocol': protocol.toJson(),
      'derivation_path': derivationPath,
      'contract_address': contractAddress,
      'parent_coin': parentCoin,
      'swap_contract_address': swapContractAddress,
      'nodes': List<dynamic>.from(nodes.map((e) => e.toJson())),
    };
  }
}
