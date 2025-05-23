// ignore_for_file: avoid_print it's an example

import 'package:warframestat_client/warframestat_client.dart';

Future<void> main() async {
  final worldstateClient = WorldstateClient();
  final worldstate = await worldstateClient.fetchWorldstate();

  print(worldstate.timestamp);

  final itemsClient = WarframeItemsClient();

  // Search returns minimal results. You should use fetchItem() if you want the
  // full item
  final results = await itemsClient.search('AfterBurner');
  print(results.first.name);
  print(results.first.wikiaUrl);

  final item = await itemsClient.fetchItem('/Lotus/Powersuits/Archwing/DemolitionJetPack/ExhaustTrailAugmentCard');

  print(item?.name);

  final synthTargetClient = SynthTargetClient();
  // If you find a target that isn't in here you can make a PR here
  // https://github.com/WFCD/warframe-worldstate-data
  final targets = await synthTargetClient.fetchTargets();
  print(targets.first.name);

  // Doesn't work anymore... :(
  // final profileClient = ProfileClient(username: 'OrnsteinTheSlayer');
  // final profile = await profileClient.fetchProfile();

  // print(profile.username);

  final ws = WarframestatWebsocket();

  ws.worldstate().listen((data) => print(data.timestamp));
}
