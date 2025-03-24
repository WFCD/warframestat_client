import 'dart:convert';
import 'dart:isolate';

import 'package:warframestat_client/warframestat_client.dart';

/// {@template synthtargetclient}
/// Synthesis target client
/// {@endtemplate}
class SynthTargetClient extends WarframestatHttpClient {
  /// {@macro synthrargetclient}
  SynthTargetClient({super.client, super.language, super.ua});

  /// Retrives a list of all synthesis target.
  Future<List<SynthTarget>> fetchTargets() async {
    final response = await get('/synthtargets');

    return Isolate.run(() {
      final data = json.decode(response.body) as List<dynamic>;

      return data.map((e) => SynthTarget.fromJson(e as Map<String, dynamic>)).toList();
    });
  }
}
