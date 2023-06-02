import 'coin_config_logic.dart';
import 'coin_enums.dart';
import 'coin_node.dart';
import 'coin_protocol.dart';

part 'coin_config_data.dart';

class CoinConfig extends CoinConfigData with CoinConfigLogic {
  CoinConfig({
    required super.coin,
    required super.type,
    required super.name,
    required super.coinpaprikaId,
    required super.coingeckoId,
    required super.livecoinwatchId,
    required super.explorerUrl,
    required super.explorerTxUrl,
    required super.explorerAddressUrl,
    required super.supported,
    required super.active,
    required super.isTestnet,
    required super.currentlyEnabled,
    required super.walletOnly,
    required super.fullName,
    required super.rpcport,
    required super.mm2,
    required super.chainId,
    required super.requiredConfirmations,
    required super.avgBlocktime,
    required super.decimals,
    required super.protocol,
    required super.derivationPath,
    required super.contractAddress,
    required super.parentCoin,
    required super.swapContractAddress,
    required super.nodes,
    required super.signMessagePrefix,
    required super.orderbookTicker,
    required super.requiresNotarization,
    required super.segwit,
  });
}
