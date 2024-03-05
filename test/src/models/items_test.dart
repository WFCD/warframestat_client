import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late List<Map<String, dynamic>> items;

  setUp(() async {
    final fixture = await ItemsFixture().loadWarframeItems();

    items = List<dynamic>.from(json.decode(fixture) as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();
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
  });
}
