import 'package:warframestat_client/warframestat_client.dart';

void main() async {
  final ws = WorldstateClient();
  final cs = await ws.fetchWorldstate();
  final socket = WarframestatWebsocket.connect();

  // ignore: avoid_print
  // print(cs.timestamp);

  socket.worldstateEvents().listen((e) => print('s: ${e.timestamp}'));
  // ws.worldstateWebSocket().listen((e) => print('ws: ${e.timestamp}'));
}
