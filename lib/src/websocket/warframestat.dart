import 'dart:convert';

import 'package:warframestat_client/warframestat_client.dart';
import 'package:web_socket_client/web_socket_client.dart';

final _baseUrl = Uri.parse('wss://api.warframestat.us/socket');

/// {@template warframestat_websocket}
/// Subscribes to warframestat's websock.
/// {@endtemplate}
class WarframestatWebsocket {
  /// {@macro warframestat_websocket}
  WarframestatWebsocket(WebSocket websocket, this.language)
      : _websocket = websocket;

  /// Creates a static websocket instance.
  factory WarframestatWebsocket.connect({Language language = Language.en}) {
    final socket = WebSocket(
      _baseUrl,
      pingInterval: const Duration(milliseconds: 25000),
    );

    return WarframestatWebsocket(socket, language);
  }

  /// The language code to filter by
  final Language language;

  final WebSocket _websocket;

  /// A stream of worldstate events
  Stream<Worldstate> worldstateEvents() {
    const eventName = 'ws:update';

    Worldstate toState(Map<String, dynamic> event) =>
        Worldstate.fromJson(event['data'] as Map<String, dynamic>);

    return _websocket.messages
        .map((event) => json.decode(event as String) as Map<String, dynamic>)
        .where((event) => event['event'] == eventName)
        .map((event) => event['packet'] as Map<String, dynamic>)
        .where((event) => event['language'] == language.name)
        .map(toState);
  }
}
