import 'dart:io';

import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../helpers/fixtures.dart';
import '../helpers/profile_fixture.dart';

class MockHttpClient extends Mock implements Client {}

class FakeUri extends Fake implements Uri {}

Future<void> main() async {
  final skipArbi = await WarframestatFixture().loadArbitration() == null;

  late Client mockClient;
  late WarframestatClient warframestat;

  setUp(() {
    mockClient = MockHttpClient();
    warframestat = WarframestatClient(client: mockClient);

    registerFallbackValue(FakeUri());
  });

  tearDown(() => reset(mockClient));

  group('Profile', () {
    late ProfileFixture profileFixture;

    Uri pUri(String path) => uri('profile/$path');

    setUp(() => profileFixture = ProfileFixture());

    test('Get player profile', () async {
      when(
        () => mockClient.get(pUri('572b6e1a3ade7fa43b58d9c4')),
      ).thenAnswer((_) async => response(await profileFixture.loadProfile()));

      final profile = await warframestat.profile('572b6e1a3ade7fa43b58d9c4').fetchProfile();

      // DE inserts platform specfic symbols that I have not parsed out yet
      expect(profile.username, contains('OrnsteinTheSlayer'));
    });

    test('Throw when player is not found', () async {
      when(() => mockClient.get(pUri('notfound'))).thenThrow(const ProfileNotFound('notfound'));

      expect(() => warframestat.profile('notfound').fetchProfile(), throwsA(const TypeMatcher<ProfileNotFound>()));
    });
  });

  group('Worldstate', () {
    late WarframestatFixture worldstateFixtures;

    Uri wUri(String path) => uri('pc$path');

    setUp(() => worldstateFixtures = WarframestatFixture());

    test('Get the current worldstate', () async {
      when(() => mockClient.get(wUri(''))).thenAnswer((_) async => response(await worldstateFixtures.loadWorldstate()));

      final state = await warframestat.worldstate.fetchWorldstate();

      expect(state, const TypeMatcher<Worldstate>());
    });

    test('Get current build label', () async {
      when(
        () => mockClient.get(wUri('/buildLabel')),
      ).thenAnswer((_) async => response('2025.09.02.14.13/C1uuuxHFA5pFWj3h1OydPA'));

      final label = await warframestat.worldstate.fetchBuildLabel();

      expect(label, '2025.09.02.14.13/C1uuuxHFA5pFWj3h1OydPA');
    });

    test('Get alerts', () async {
      when(
        () => mockClient.get(wUri('/alerts')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadAlert()));

      final alerts = await warframestat.worldstate.fetchAlerts();

      expect(alerts, const TypeMatcher<List<Alert>>());
    });

    test(
      'Get arbitration',
      () async {
        when(
          () => mockClient.get(wUri('/arbitration')),
        ).thenAnswer((_) async => response((await worldstateFixtures.loadArbitration())!));

        final arbitration = await warframestat.worldstate.fetchArbitration();

        expect(arbitration, const TypeMatcher<Arbitration>());
      },
      // A lot of time Arbitrations are gonna be null when fixtures are updated.
      skip: skipArbi,
    );

    test('Get archon hunt', () async {
      when(
        () => mockClient.get(wUri('/archonHunt')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadArchonHunt()));

      final archonHunt = await warframestat.worldstate.fetchArchonHunt();

      expect(archonHunt, const TypeMatcher<Sortie>());
    });

    test('Get cambion cycle', () async {
      when(
        () => mockClient.get(wUri('/cambionCycle')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadCambionCycle()));

      final cambionCycle = await warframestat.worldstate.fetchCambionCycle();

      expect(cambionCycle, const TypeMatcher<CambionCycle>());
    });

    test('Get cetus cycle', () async {
      when(
        () => mockClient.get(wUri('/cetusCycle')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadCetusCycle()));

      final cetusCycle = await warframestat.worldstate.fetchCetusCycle();

      expect(cetusCycle, const TypeMatcher<CetusCycle>());
    });

    test('Get conclave challenges', () async {
      when(
        () => mockClient.get(wUri('/conclaveChallenges')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadConclaveChallenges()));

      final conclaveChallenges = await warframestat.worldstate.fetchConclaveChallenges();

      expect(conclaveChallenges, const TypeMatcher<List<ConclaveChallenge>>());
    });

    test('Get construction progress', () async {
      when(
        () => mockClient.get(wUri('/constructionProgress')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadConstructionProgress()));

      final constructionProgress = await warframestat.worldstate.fetchConstrcutionProgress();

      expect(constructionProgress, const TypeMatcher<ConstructionProgress>());
    });

    test('Get daily deals', () async {
      when(
        () => mockClient.get(wUri('/dailyDeals')),
      ).thenAnswer((_) async => response(await worldstateFixtures.loadDailyDeals()));

      final dailyDeals = await warframestat.worldstate.fetchDailyDeals();

      expect(dailyDeals, const TypeMatcher<List<DailyDeal>>());
    });
  });
}

Uri uri(String path) {
  return Uri.https(authority, path, {'language': Language.en.name});
}

Response response(String body, [int statusCode = 200]) {
  return Response(body, statusCode, headers: {HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'});
}
