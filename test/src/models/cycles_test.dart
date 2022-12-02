import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  group('Cetus Cycle', () {
    late CetusCycle cetus;
    late Map<String, dynamic> cetusJsonMap;

    setUp(() async {
      final cetusFisture = await WorldstateFixture().loadCetusCycle();

      cetusJsonMap = json.decode(cetusFisture) as Map<String, dynamic>;
      cetus = CetusCycle.fromJson(cetusJsonMap);
    });

    test('Cetus cycle serlization check', () {
      expect(cetus.toJson(), cetusJsonMap);
    });
  });

  group('Vallis Cycle', () {
    late VallisCycle vallies;
    late Map<String, dynamic> vallisJsonMap;

    setUp(() async {
      final vallisFixture = await WorldstateFixture().loadVallisCycle();

      vallisJsonMap = json.decode(vallisFixture) as Map<String, dynamic>;
      vallies = VallisCycle.fromJson(vallisJsonMap);
    });

    test('Vallis cycle serlization check', () {
      expect(vallies.toJson(), vallisJsonMap);
    });
  });

  group('Cambion Cycle', () {
    late CambionCycle cambion;
    late Map<String, dynamic> cambionJsonMap;

    setUp(() async {
      final cambionFixture =
          await WorldstateFixture().loadCambionCycleFixture();

      cambionJsonMap = json.decode(cambionFixture) as Map<String, dynamic>;
      cambion = CambionCycle.fromJson(cambionJsonMap);
    });

    test('Cambion cycle serilization check', () {
      expect(cambion.toJson(), cambionJsonMap);
    });
  });
}
