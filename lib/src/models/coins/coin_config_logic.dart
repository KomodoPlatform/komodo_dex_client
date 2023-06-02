import 'package:komodo_dex_client/komodo_dex_client.dart';

import 'coin_enums.dart';

/// A class that represents the logic we apply to the coin configuration.
mixin CoinConfigLogic on CoinConfigData {
  bool get isTradeable => mm2 == 1 && !_walletOnlyCoins.contains(coin);

  CoinType get coinType {
    Map<String, CoinType> suffixMap = {
      'AVX-20': CoinType.avx20,
      'Arbitrum': CoinType.arbitrum,
      'BEP-20': CoinType.bep20,
      'ERC-20': CoinType.erc20,
      'MVR-20': CoinType.moonriver,
      'PLG-20': CoinType.moonbeam,
      //TODO! Complete this list and verify current entries
    };

    String suffix = coin.split('-').last;
    return suffixMap[suffix] ?? CoinType.bep20;
    //TODO!
  }

  String get networkProtocol {
    String suffix = coin.split('-').last;
    switch (suffix) {
      case 'BEP-20':
        return 'Binance Smart Chain';
      case 'ERC-20':
        return 'Ethereum';
      case 'MVR-20':
        return 'Moonriver';
      case 'PLG-20':
        return 'Moonbeam';
      // COMPLETE HERE
      default:
        return 'Unknown';
    }
  }
}

List<String> _walletOnlyCoins = [
// TODO:
];
