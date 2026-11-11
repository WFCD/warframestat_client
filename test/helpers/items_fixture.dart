import 'dart:io';

import 'abstract_fixture.dart';

class ItemsFixture extends Fixture {
  new() : super(Directory('test/fixtures'));

  // Loading every item to test against everything.
  String loadWarframeItems() {
    return fixture('warframe-items.json');
  }

  String loadEnemies() {
    return fixture('enemy.json');
  }
}
