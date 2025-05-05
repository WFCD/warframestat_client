import 'package:warframestat_client/warframestat_client.dart';
import 'package:web_socket_client/web_socket_client.dart';

const _pingInterval = Duration(milliseconds: 25000);
final _baseUrl = Uri.parse('wss://api.warframestat.us/socket');

/// Warframestat websocket event types
enum WarframestatEvents {
  /// Worldstate update
  update('ws:update');

  const WarframestatEvents(this.raw);

  /// Event string
  final String raw;
}

/// {@template warframestat_websocket}
/// Subscribes to warframestat's websock.
/// {@endtemplate}
class WarframestatWebsocket {
  /// {@macro warframestat_websocket}
  WarframestatWebsocket([this.language = Language.en]) : _websocket = WebSocket(_baseUrl, pingInterval: _pingInterval);

  /// The language code to filter by
  final Language language;

  final WebSocket _websocket;

  /// Exposes websocket connection stream
  Connection get connection => _websocket.connection;

  /// A stream of worldstate events
  Stream<Worldstate> get worldstate {
    return packets(WarframestatEvents.update).where((e) => e['language'] == language.name).map((e) {
      try {
        return Worldstate.fromJson(e['data'] as Map<String, dynamic>);
      } on Exception catch (e, stack) {
        throw FormatException('Failed to parse worldstate: $e\n$stack');
      }
    });
  }

  /// Complete stream of websocket events filterd down to the packets themselves
  Stream<Map<String, dynamic>> packets(WarframestatEvents event) {
    return _websocket.messages
        .asyncMap((e) => jsonDecode<Map<String, dynamic>>(e as String))
        .where((e) => e['event'] == event.raw)
        .map((e) => e['packet'] as Map<String, dynamic>);
  }
}
