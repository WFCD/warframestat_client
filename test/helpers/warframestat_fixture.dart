import 'dart:io';

import 'abstract_fixture.dart';

class WarframestatFixture extends Fixture {
  WarframestatFixture() : super(Directory('test/fixtures'));

  Future<String> loadWorldstate() {
    return fixture('worldstate.json');
  }

  // Loading every item to test against everything.
  Future<String> loadWarframeItems() {
    return fixture('warframe-items.json');
  }
}
