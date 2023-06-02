enum ServerStatus {
  /// The API is currently online and operational.
  ready,

  /// The API is currently offline and not operational.
  offline,

  /// The API is running, but is currently not accepting new connections.
  ///
  /// E.g. the API is currently in the process of shutting down or waiting
  /// for pending tasks to complete before shutting down.
  shutdownPending,

  /// The API is currently experiencing issues.
  issues,
}
