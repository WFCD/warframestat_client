import 'dart:io';

import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../helpers/fixtures.dart';

class MockHttpClient extends Mock implements Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  late Client mockClient;
  late WarframestatFixture worldstateFixtures;
  late WorldstateClient worldstateClient;

  setUpAll(() {
    mockClient = MockHttpClient();
    worldstateFixtures = WarframestatFixture();

    worldstateClient = WorldstateClient(client: mockClient);

    registerFallbackValue(FakeUri());
  });

  group('Worldstate', () {
    setUp(() async {
      final worldstate = await worldstateFixtures.loadWorldstate();

      when(() => mockClient.get(any()))
          .thenAnswer((_) async => response(worldstate));
    });

    tearDown(() {
      reset(mockClient);
    });

    test('Models should be serialized', () async {
      final state = await worldstateClient.currentState();

      expect(state, const TypeMatcher<Worldstate>());
    });
  });
}

Response response(String body, [int statusCode = 200]) {
  return Response(
    body,
    statusCode,
    headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'},
  );
}
