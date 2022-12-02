import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late List<Map<String, dynamic>> jsonMap;

  setUp(() async {
    final fixture = await WorldstateFixture().loadWorldEvents();

    jsonMap = (json.decode(fixture) as List<dynamic>)
        .map((e) => Map<String, dynamic>.from(e as Map))
        .toList();
  });

  test('Serlization checks', () {
    final event = WorldEvent.fromJson(jsonMap.first);

    expect(event.toJson(), jsonMap.first);
  });
}
