import 'package:warframestat_client/warframestat_client.dart';

void main() async {
  final ws = WorldstateClient();
  final cs = await ws.fetchWorldstate();

  // ignore: avoid_print
  print(cs.timestamp);
}
