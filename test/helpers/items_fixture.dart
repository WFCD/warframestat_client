import 'dart:io';

import 'abstract_fixture.dart';

class ItemsFixture extends Fixture {
  ItemsFixture() : super(Directory('test/fixtures'));

  // Loading every item to test against everything.
  Future<String> loadWarframeItems() {
    return fixture('warframe-items.json');
  }
}
