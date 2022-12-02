import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late Map<String, dynamic> jsonMap;

  setUp(() async {
    final fixture = await WarframestatFixture().loadWorldstate();

    jsonMap = json.decode(fixture) as Map<String, dynamic>;
  });

  test('Serlization checks', () {
    final event = Worldstate.fromJson(jsonMap);

    expect(event.toJson(), jsonMap);
  });
}
