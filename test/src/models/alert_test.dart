import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late String fixture;
  late List<Map<String, dynamic>> jsonMap;

  setUp(() async {
    fixture = await WorldstateFixture().loadAlertFixture();
    jsonMap = (json.decode(fixture) as List<dynamic>)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  });

  test('Serlization checks', () {
    final alert = Alert.fromJson(jsonMap.first);

    expect(alert.toJson(), jsonMap.first);
  });
}
