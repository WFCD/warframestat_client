import 'dart:convert';

import 'package:test/test.dart';
import 'package:warframestat_client/src/models/models.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/profile_fixture.dart';

void main() {
  late Map<String, dynamic> json;

  setUp(() async {
    final fixture = await ProfileFixture().loadProfile();

    json = jsonDecode(fixture) as Map<String, dynamic>;
  });

  test('Serlization checks', () {
    expect(Profile.fromJson(json), const TypeMatcher<Profile>());
  });
}
