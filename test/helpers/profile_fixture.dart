import 'dart:io';

import 'abstract_fixture.dart';

class ProfileFixture extends Fixture {
  ProfileFixture() : super(Directory('test/fixtures'));

  Future<String> loadProfile() => fixture('OrnsteinTheSlayer.json');
}
