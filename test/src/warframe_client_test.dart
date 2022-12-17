import 'dart:io';

import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../helpers/fixtures.dart';

class MockHttpClient extends Mock implements Client {}

void main() {
  late Client mockClient;
  late WarframestatFixture worldstateFixtures;
  late WorldstateClient worldstateClient;

  setUp(() {
    mockClient = MockHttpClient();
    worldstateFixtures = WarframestatFixture();

    worldstateClient = WorldstateClient(client: mockClient);
  });

  group('Worldstate', () {
    setUp(() async {
      final worldstate = await worldstateFixtures.loadWorldstate();

      when(() => mockClient.get(uri('')))
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

Uri uri(String path) {
  return Uri.https(
    'api.warframestat.us',
    'pc$path',
    <String, dynamic>{'language': 'en'},
  );
}

Response response(String body, [int statusCode = 200]) {
  return Response(
    body,
    statusCode,
    headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'},
  );
}
