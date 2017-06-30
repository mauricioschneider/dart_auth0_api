class AuthenticationClient {

  String _clientSecret;
  String _clientId;
  String _domain;
  Map _options;

  AuthenticationClient({String clientSecret, String clientId, String domain, Map options}) {

    // TODO: specify exact missing param
    if (clientSecret == null || clientId == null || domain == null) {
      throw new ArgumentError('Required constructor parameter not set');
    }

    _clientSecret = clientSecret;
    _clientId = clientId;
    _domain = domain;
    _options = options;
  }

}
