final class KomodoDexClientConfig {
  KomodoDexClientConfig({
    required this.host,
    required this.port,
    required this.rpcPassword,
  });

  final String host;
  final int port;
  final String rpcPassword;
}
