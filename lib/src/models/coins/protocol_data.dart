class ProtocolData {
  String platform;
  String contractAddress;

  ProtocolData({
    required this.platform,
    required this.contractAddress,
  });

  factory ProtocolData.fromJson(Map<String, dynamic> json) {
    return ProtocolData(
      platform: json['platform'] as String,
      contractAddress: json['contract_address'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'platform': platform,
      'contract_address': contractAddress,
    };
  }
}
