import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/enums.dart';

part 'syndicate_job.g.dart';

/// {@template syndicatejob}
/// Data on the current syndicate bounty.
/// {@endtemplate}
@JsonSerializable()
class SyndicateJob extends Equatable {
  /// {@macro syndicatejob}
  const SyndicateJob({
    required this.id,
    required this.rewardPool,
    required this.rewardPoolDrops,
    required this.type,
    required this.enemyLevels,
    required this.standingStages,
    required this.minMr,
    required this.expiry,
  });

  /// Creates a Syndicatemission from Json map
  factory SyndicateJob.fromJson(Map<String, dynamic> json) => _$SyndicateJobFromJson(json);

  /// Job id.
  final String id;

  /// Reward pool for the given job.
  final List<String> rewardPool;

  /// More verbose version of [rewardPool] with drop chance and item count
  final List<RewardDrop>? rewardPoolDrops;

  /// Job type.
  final String? type;

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
  List<Object?> get props => [id, rewardPool, rewardPoolDrops, type, enemyLevels, standingStages, minMr, expiry];

  @override
  bool? get stringify => false;
}

/// {@template reward_drop}
/// A bounty reward drop
/// {@endtemplate}
@JsonSerializable()
class RewardDrop extends Equatable {
  /// {@macro reward_drop}
  const RewardDrop({
    required this.item,
    required this.rarity,
    required this.chance,
    // TODO(Orn): Get rid of this workaround in like a week or so
    this.count = 1,
  });

  /// Creates a Syndicatemission from Json map
  factory RewardDrop.fromJson(Map<String, dynamic> json) => _$RewardDropFromJson(json);

  /// Item name
  final String item;

  /// Item rarity
  final Rarity rarity;

  /// Drop chance
  final num chance;

  /// How many of this item the player will get
  final int count;

  /// Creates a Json map from a SyndicateJob
  Map<String, dynamic> toJson() => _$RewardDropToJson(this);

  @override
  List<Object?> get props => [item, rarity, chance, count];
}
