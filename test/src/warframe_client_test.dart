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

  test('Get the current worldstate', () async {
    when(() => mockClient.get(uri(''))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadWorldstate()),
    );

    final state = await worldstateClient.fetchWorldstate();

    expect(state, const TypeMatcher<Worldstate>());
  });

  test('Get alerts', () async {
    when(() => mockClient.get(uri('/alerts'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadAlert()),
    );

    final alerts = await worldstateClient.fetchAlerts();

    expect(alerts, const TypeMatcher<List<Alert>>());
  });

  test('Get arbitration', () async {
    when(() => mockClient.get(uri('/arbitration'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadArbitration()),
    );

    final arbitration = await worldstateClient.fetchArbitration();

    expect(arbitration, const TypeMatcher<Arbitration>());
  });

  test('Get archon hunt', () async {
    when(() => mockClient.get(uri('/archonHunt'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadArchonHunt()),
    );

    final archonHunt = await worldstateClient.fetchArchonHunt();

    expect(archonHunt, const TypeMatcher<Sortie>());
  });

  test('Get cambion cycle', () async {
    when(() => mockClient.get(uri('/cambionCycle'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadCambionCycle()),
    );

    final cambionCycle = await worldstateClient.fetchCambionCycle();

    expect(cambionCycle, const TypeMatcher<CambionCycle>());
  });

  test('Get cetus cycle', () async {
    when(() => mockClient.get(uri('/cetusCycle'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadCetusCycle()),
    );

    final cetusCycle = await worldstateClient.fetchCetusCycle();

    expect(cetusCycle, const TypeMatcher<CetusCycle>());
  });

  test('Get conclave challenges', () async {
    when(() => mockClient.get(uri('/conclaveChallenges'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadConclaveChallenges()),
    );

    final conclaveChallenges = await worldstateClient.fetchConclaveChallenges();

    expect(conclaveChallenges, const TypeMatcher<List<ConclaveChallenge>>());
  });

  test('Get construction progress', () async {
    when(() => mockClient.get(uri('/constructionProgress'))).thenAnswer(
      (_) async =>
          response(await worldstateFixtures.loadConstructionProgress()),
    );

    final constructionProgress =
        await worldstateClient.fetchConstrcutionProgress();

    expect(constructionProgress, const TypeMatcher<ConstructionProgress>());
  });

  test('Get daily deals', () async {
    when(() => mockClient.get(uri('/dailyDeals'))).thenAnswer(
      (_) async => response(await worldstateFixtures.loadDailyDeals()),
    );

    final dailyDeals = await worldstateClient.fetchDailyDeals();

    expect(dailyDeals, const TypeMatcher<List<DailyDeal>>());
  });
}

Uri uri(String path) {
  return Uri.https(
    authority,
    '/${GamePlatform.pc.name}$path',
    {'language': Language.en.name},
  );
}

Response response(String body, [int statusCode = 200]) {
  return Response(
    body,
    statusCode,
    headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'},
  );
}
