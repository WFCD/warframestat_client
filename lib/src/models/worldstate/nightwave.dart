import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'nightwave.g.dart';

/// {@template nightwave}
/// The Current cycle and challenges of Nightwave, a battle-pass-esque rotation
/// and challenge system
/// {@endtemplate}
@JsonSerializable()
class Nightwave extends WorldstateObject {
  /// {@macro nightwave}
  const Nightwave({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.active,
    required this.params,
    required this.rewardTypes,
    required this.season,
    required this.ta,
    required this.phase,
    required this.possibleChallenges,
    required this.activeChallenges,
  });

  /// Creates a Nightwave from Json map
  factory Nightwave.fromJson(Map<String, dynamic> json) =>
      _$NightwaveFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// A description for active
  final bool active;

  /// A description for params
  final Map<String, dynamic> params;

  /// A description for rewardTypes
  final List<String> rewardTypes;

  /// A description for season
  final int season;

  /// A description for ta
  final String? ta;

  /// A description for phase
  final int phase;

  /// A description for possibleChallenges
  final List<Challenge> possibleChallenges;

  /// A description for activeChallenges
  final List<Challenge> activeChallenges;

  /// Filters [activeChallenges] and exports only daily challenges
  List<Challenge> get daily {
    return activeChallenges.where((c) => c.isDaily).toList();
  }

  /// Filters [activeChallenges] and exports only weekly challenges
  List<Challenge> get weekly {
    return activeChallenges.where((c) => !c.isDaily).toList();
  }

  /// Creates a Json map from a Nightwave
  Map<String, dynamic> toJson() => _$NightwaveToJson(this);

  @override
  List<Object?> get props {
    return [
      active,
      params,
      rewardTypes,
      season,
      ta,
      phase,
      possibleChallenges,
      activeChallenges,
    ];
  }
}

/// {@template challenge}
/// A nightwave challenge.
/// {@endtemplate}
@JsonSerializable()
class Challenge extends WorldstateObject {
  /// {@macro challenge}
  const Challenge({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.title,
    required this.desc,
    required this.reputation,
    required this.active,
    required this.isElite,
    this.isDaily = false,
  });

  /// Creates a Challenge from Json map.
  factory Challenge.fromJson(Map<String, dynamic> json) {
    return _$ChallengeFromJson(json);
  }

  /// Challenge title.
  final String title;

  /// Challenge description.
  final String desc;

  /// Reputation awarded for completing this challenge.
  final int reputation;

  /// Whether this challenge is a active upon object creation.
  final bool active;

  /// Whether this challenge is a daily challenge.
  final bool isDaily;

  /// Whether this challenge is an elite challenge.
  final bool isElite;

  /// Creates a Json map from a Challenge.
  Map<String, dynamic> toJson() => _$ChallengeToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        title,
        desc,
        reputation,
        active,
        isDaily,
        isElite,
      ]);
  }
}
