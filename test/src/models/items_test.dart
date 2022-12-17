import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/src/utils/items_utils.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late List<Map<String, dynamic>> jsonMap;

  setUp(() async {
    final fixture = await ItemsFixture().loadWarframeItems();

    jsonMap = List<dynamic>.from(json.decode(fixture) as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();
  });

  test('Serlization checks', () {
    final items = jsonMap.map(toItem).toList();

    expect(items, const TypeMatcher<List<Item>>());

    expect(
      items.map((e) => e.toJson()).toList(),
      const TypeMatcher<List<Map<String, dynamic>>>(),
    );
  });
}
