import 'dart:io';

import 'abstract_fixture.dart';

class ProfileFixture extends Fixture {
  new() : super(Directory('test/fixtures'));

  String loadProfile() => fixture('OrnsteinTheSlayer.json');
}
