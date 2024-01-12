import 'dart:convert';

import 'package:compute/compute.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template synthtargetclient}
/// Synthesis target client
/// {@endtemplate}
class SynthTaretClient extends WarframestatClient {
  /// {@macro synthrargetclient}
  SynthTaretClient({super.client, super.language, super.ua});

  /// Retrives a list of all synthesis target.
  Future<List<SynthTarget>> getTargets() async {
    final response = await get('/synthtargets');

    return compute(_parseTargets, response.body);
  }

  static List<SynthTarget> _parseTargets(String body) {
    final data = json.decode(body) as List<dynamic>;

    return data
        .map((e) => SynthTarget.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
