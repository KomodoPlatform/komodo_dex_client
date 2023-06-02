import 'package:komodo_dex_client/src/models/config/komodo_client_config.dart';

export 'package:komodo_dex_client/src/models/coins/coin_config.dart';
export 'package:komodo_dex_client/src/models/coins/coin_config_logic.dart';
// export 'package:komodo_dex_client/src/models/coins/coin_enums.dart';
export 'package:komodo_dex_client/src/models/coins/coin_node.dart';
export 'package:komodo_dex_client/src/models/coins/coin_protocol.dart';
export 'package:komodo_dex_client/src/models/coins/protocol_data.dart';

class KomodoDexClient {
  KomodoDexClient({
    required KomodoDexClientConfig config,
  }) : _config = config;

  final KomodoDexClientConfig _config;
}
