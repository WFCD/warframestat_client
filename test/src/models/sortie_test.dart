import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late Sortie archon;
  late Sortie sortie;

  late Map<String, dynamic> archonjsonMap;
  late Map<String, dynamic> sortiejsonMap;

  setUp(() async {
    final archonFixture = await WorldstateFixture().loadArchonHuntFixture();
    final sortieFixture = await WorldstateFixture().loadSortieFixture();

    archonjsonMap = json.decode(archonFixture) as Map<String, dynamic>;
    archon = Sortie.fromJson(archonjsonMap);

    sortiejsonMap = json.decode(sortieFixture) as Map<String, dynamic>;
    sortie = Sortie.fromJson(sortiejsonMap);
  });

  test('Archon serlization check', () {
    expect(archon.toJson(), archonjsonMap);
  });

  test('Sortie serlization check', () {
    expect(sortie.toJson(), sortiejsonMap);
  });
}
