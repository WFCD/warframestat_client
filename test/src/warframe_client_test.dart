import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:warframestat_client/src/enums.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../helpers/fixtures.dart';

class MockHttpClient extends Mock implements Client {}

void main() {
  late Client mockClient;
  late WorldstateFixture worldstateFixtures;
  late WorldstateClient worldstateClient;

  setUp(() {
    mockClient = MockHttpClient();
    worldstateFixtures = WorldstateFixture();

    worldstateClient = WorldstateClient(
      platform: GamePlatform.pc,
      language: Language.en,
      client: mockClient,
    );
  });

  group('Worldstate', () {
    late String worldstate;
    late Map<String, dynamic> worldstateMap;

    setUp(() async {
      worldstate = await worldstateFixtures.loadWorldstate();
      worldstateMap = json.decode(worldstate) as Map<String, dynamic>;

      when(() => mockClient.get(uri('')))
          .thenAnswer((_) async => response(worldstate));
    });

    tearDown(() {
      reset(mockClient);
    });

    test('Models should be serialized', () async {
      final state = await worldstateClient.currentState();

      expect(state.toJson(), worldstateMap);
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
