import 'package:auth0/auth0.dart' show AuthenticationClient;
import 'package:test/test.dart';

void main() {
  group('AuthenticationClient', () {

    test('correctly instantiates when all required options are provided', () {
      AuthenticationClient client = new AuthenticationClient(
          clientId: 'some-client',
          clientSecret: 'some-secret',
          domain: 'some.domain.com'
      );
      expect(client is AuthenticationClient, isTrue);
    });

    test('throws an error when domain is not provided', () {
      AuthenticationClient initialize() {
        AuthenticationClient client = new AuthenticationClient(
            clientId: 'some-client',
            clientSecret: 'some-secret'
        );
        return client;
      }
      expect(initialize, throwsArgumentError);
    });

    test('throws an error when clientId is not provided', () {
      AuthenticationClient initialize() {
        AuthenticationClient client = new AuthenticationClient(
            clientSecret: 'some-secret',
            domain: 'some.domain.com'
        );
        return client;
      }
      expect(initialize, throwsArgumentError);
    });

    test('throws an error when clientSecret is not provided', () {
      AuthenticationClient initialize() {
        AuthenticationClient client = new AuthenticationClient(
            clientId: 'some-client',
            domain: 'some.domain.com'
        );
        return client;
      }
      expect(initialize, throwsArgumentError);
    });
  });
}
