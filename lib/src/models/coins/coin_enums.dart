enum CoinType {
  avx20,
  arbitrum,
  bep20,
  erc20,
  ethereumClassic,
  ftm20,
  hrc20,
  hecoChain,
  krc20,
  matic,
  moonbeam,
  moonriver,
  qrc20,
  qtum,
  rskSmartBitcoin,
  slp,
  smartChain,
  smartBch,
  tendermint,
  tendermintToken,
  utxo,
  ubiq,
  zHtlc,
}

class CoinTypeEnum {
  static CoinType parseCoinType(String value) {
    switch (value) {
      case 'AVX-20':
        return CoinType.avx20;
      case 'Arbitrum':
        return CoinType.arbitrum;
      case 'BEP-20':
        return CoinType.bep20;
      case 'ERC-20':
        return CoinType.erc20;
      case 'Ethereum Classic':
        return CoinType.ethereumClassic;
      case 'FTM-20':
        return CoinType.ftm20;
      case 'HRC-20':
        return CoinType.hrc20;
      case 'HecoChain':
        return CoinType.hecoChain;
      case 'KRC-20':
        return CoinType.krc20;
      case 'Matic':
        return CoinType.matic;
      case 'Moonbeam':
        return CoinType.moonbeam;
      case 'Moonriver':
        return CoinType.moonriver;
      case 'QRC-20':
        return CoinType.qrc20;
      case 'QTUM':
        return CoinType.qtum;
      case 'RSK Smart Bitcoin':
        return CoinType.rskSmartBitcoin;
      case 'SLP':
        return CoinType.slp;
      case 'Smart Chain':
        return CoinType.smartChain;
      case 'SmartBCH':
        return CoinType.smartBch;
      case 'TENDERMINT':
        return CoinType.tendermint;
      case 'TENDERMINTTOKEN':
        return CoinType.tendermintToken;
      case 'UTXO':
        return CoinType.utxo;
      case 'Ubiq':
        return CoinType.ubiq;
      case 'ZHTLC':
        return CoinType.zHtlc;
      default:
        throw ArgumentError('Invalid CoinType value: $value');
    }
  }
}
