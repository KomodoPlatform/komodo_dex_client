import 'package:komodo_dex_client/src/models/coins/protocol_data.dart';

class CoinProtocol {
  String type;
  ProtocolData? protocolData;

  CoinProtocol({
    required this.type,
    required this.protocolData,
  });

  factory CoinProtocol.fromJson(Map<String, dynamic> json) {
    return CoinProtocol(
      type: json['type'] as String,
      protocolData: json['protocol_data'] == null
          ? null
          : ProtocolData.fromJson(
              json['protocol_data'] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'protocol_data': protocolData?.toJson(),
    };
  }
}
