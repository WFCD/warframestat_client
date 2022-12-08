import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'syndicate_mission.g.dart';

/// {@template syndicatemission}
/// Syndicatemission description
/// {@endtemplate}
@JsonSerializable()
class SyndicateMission extends WorldstateObject {
  /// {@macro syndicatemission}
  const SyndicateMission({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.active,
    required this.syndicate,
    required this.syndicateKey,
    required this.nodes,
    required this.jobs,
  });

  /// Creates a Syndicatemission from Json map
  factory SyndicateMission.fromJson(Map<String, dynamic> json) =>
      _$SyndicateMissionFromJson(json);

  /// A description for active
  final bool active;

  /// A description for syndicate
  final String syndicate;

  /// A description for syndicateKey
  final String syndicateKey;

  /// A description for nodes
  final List<String> nodes;

  /// A description for jobs
  final List<SyndicateJob> jobs;

  /// Creates a Json map from a Syndicatemission
  Map<String, dynamic> toJson() => _$SyndicateMissionToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([active, syndicate, syndicateKey, nodes, jobs]);
}
