import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/fixtures.dart';

void main() {
  late Arbitration arbitration;
  late Map<String, dynamic> jsonMap;

  setUp(() async {
    final fixture = await WorldstateFixture().loadArbitrationFixture();

    jsonMap = json.decode(fixture) as Map<String, dynamic>;
    arbitration = Arbitration.fromJson(jsonMap);
  });

  test('Serlization checks', () {
    expect(arbitration.toJson(), jsonMap);
  });
}
