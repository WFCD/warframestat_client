import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/objects.dart';

part 'syndicate_job.g.dart';

/// {@template syndicatejob}
/// Data on the current syndicate bounty.
/// {@endtemplate}
@JsonSerializable()
class SyndicateJob implements WorldstateObject {
  /// {@macro syndicatejob}
  const SyndicateJob({
    required this.id,
    required this.rewardPool,
    required this.type,
    required this.enemyLevels,
    required this.standingStages,
    required this.minMr,
    required this.expiry,
  });

  /// Creates a Syndicatemission from Json map
  factory SyndicateJob.fromJson(Map<String, dynamic> json) =>
      _$SyndicateJobFromJson(json);

  @override
  final String id;

  /// Reward pool for the given job.
  final List<String> rewardPool;

  /// Job type.
  final String type;

  /// Range of enemy level.
  final List<int> enemyLevels;

  /// Standing earned per stage.
  final List<int> standingStages;

  /// Minimum mastery rank needed to take job.
  final int? minMr;

  /// The time the job will expire on.
  final DateTime expiry;

  /// Creates a Json map from a SyndicateJob
  Map<String, dynamic> toJson() => _$SyndicateJobToJson(this);

  @override
  List<Object?> get props =>
      [id, rewardPool, type, enemyLevels, standingStages, minMr, expiry];

  @override
  bool? get stringify => false;
}
