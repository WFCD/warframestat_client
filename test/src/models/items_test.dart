import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late List<Map<String, dynamic>> items;
  late List<Map<String, dynamic>> enemies;

  setUp(() async {
    final itemFixture = await ItemsFixture().loadWarframeItems();
    final enemyFixture = await ItemsFixture().loadEnemies();

    items = List<Map<String, dynamic>>.from(
      json.decode(itemFixture) as List<dynamic>,
    ).toList();

    enemies = List<Map<String, dynamic>>.from(
      json.decode(enemyFixture) as List<dynamic>,
    ).toList();

    items
      ..addAll(enemies)
      ..shuffle();
  });

  group('Serlization check', () {
    test('[Item]', () => expect(toItems(items), isList));

    test(
      '[MinimalItem]',
      () => expect(items.map(MinimalItem.fromJson).toList(), isList),
    );
  });

  group('Type checks', () {
    test('[Gear]', () {
      final gears = toItems(items).whereType<Gear>();
      final buildableGear = gears.firstWhere((g) => g.name == 'Adrenal Stim');
      final gear = gears.firstWhere((g) => g.name == 'Alpha Corruptor');

      expect(gear, const TypeMatcher<Gear>());

      expect(buildableGear, const TypeMatcher<Gear>());
      expect(buildableGear, const TypeMatcher<BuildableItem>());
    });

    test('[PetResources]', () {
      final resources = toItems(items).whereType<PetResources>();
      final dnaStabilizers =
          resources.firstWhere((r) => r.name == 'Dna Stabilizers');
      final hinta = resources.firstWhere((r) => r.name == 'Hinta Stabilizer');

      expect(dnaStabilizers, const TypeMatcher<PetResources>());

      expect(hinta, const TypeMatcher<PetResources>());
      expect(hinta, const TypeMatcher<BuildableItem>());
    });

    test('[Enemy]', () {
      final enemies = toItems(items).whereType<Enemy>();
      final disruptors = enemies.where((e) => e.name.contains('Disruptor'));

      final names = disruptors.map((e) => e.name);
      final types = disruptors.map((e) => e.type);

      final disruptor =
          enemies.firstWhere((e) => e.name == 'Ancient Disruptor');

      expect(names.contains('Ancient Disruptor'), true);
      expect(types.contains(ItemType.shotGunMod), false);
      expect(disruptor.category, 'Enemy');
    });
  });
}
