import 'package:test/test.dart';
import 'package:warframestat_client/warframestat_client.dart';

import '../../helpers/profile_fixture.dart';

void main() {
  late Map<String, dynamic> json;

  setUp(() async {
    final fixture = await ProfileFixture().loadProfile();
    json = await jsonDecode<Map<String, dynamic>>(fixture);
  });

  test('data => Profile()', () {
    final profile = Profile.fromJson(json);

    expect(profile, const TypeMatcher<Profile>());
  });
  test('Profile.loadout.xpInfo => contains no misc items', () {
    final items = Profile.fromJson(json).loadout.xpInfo.map((xp) => xp.item);

    expect(items.whereType<Misc>().isEmpty, true);
  });
}
