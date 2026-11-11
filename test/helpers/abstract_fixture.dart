import 'dart:io';

import 'package:path/path.dart';

// const worldstate = Fixture('worldstate.json');
// const warframeItems = Fixture('warframe_items.json');
// const dropTable = Fixture('drop_table.json');
// const synthTargets = Fixture('synthTargets.json');
// const rivenSearch = Fixture('riven_search.json');

typedef JsonMap = Map<String, dynamic>;

abstract class Fixture {
  new(this.directory);

  final Directory directory;

  String fixture(String name) {
    return File(join(directory.path, name)).readAsStringSync();
  }
}
