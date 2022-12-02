import 'dart:io';

import 'package:path/path.dart';

// const worldstate = Fixture('worldstate.json');
// const warframeItems = Fixture('warframe_items.json');
// const dropTable = Fixture('drop_table.json');
// const synthTargets = Fixture('synthTargets.json');
// const rivenSearch = Fixture('riven_search.json');

typedef JsonMap = Map<String, dynamic>;

abstract class Fixture {
  Fixture(this.directory);

  final Directory directory;

  Future<String> fixture(String name) async {
    return File(join(directory.path, name)).readAsString();
  }
}
