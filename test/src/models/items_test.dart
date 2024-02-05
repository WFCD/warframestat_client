import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late List<Map<String, dynamic>> jsonMap;
  late List<Map<String, dynamic>> minimalItem;

  setUp(() async {
    final fixture = await ItemsFixture().loadWarframeItems();

    jsonMap = List<dynamic>.from(json.decode(fixture) as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();

    // uniqueName,name,description,imageName,category,type,vaulted,vaultDate
    minimalItem = jsonMap.map((e) {
      final vaulted = e['vaulted'];
      final vaultDate = e['vaultDate'];

      return {
        'uniquName': e['uniqueName'],
        'name': e['name'],
        'description': e['description'],
        'imageName': e['imageName'],
        'category': e['category'],
        'type': e['type'],
        if (vaulted != null) 'vaulted': vaulted,
        if (vaultDate != null) 'vaultDate': vaultDate,
      };
    }).toList();
  });

  test('Serlization checks for [Item]', () => expect(toItems(jsonMap), isList));

  test(
    'Serlization checks for [MinimalItem]',
    () => expect(jsonMap.map(MinimalItem.fromJson).toList(), isList),
  );
}
