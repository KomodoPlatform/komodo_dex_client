class CoinNode {
  Uri url;
  bool guiAuth;

  CoinNode({
    required this.url,
    required this.guiAuth,
  });

  factory CoinNode.fromJson(Map<String, dynamic> json) {
    return CoinNode(
      url: Uri.parse(json['url'] as String),
      guiAuth: (json['gui_auth'] as bool?) ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url.toString(),
      'gui_auth': guiAuth,
    };
  }
}
