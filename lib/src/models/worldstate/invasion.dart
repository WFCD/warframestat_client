import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models.dart';
import 'package:warframestat_client/src/objects.dart';

part 'invasion.g.dart';

/// {@template invasion}
/// Invasion description
/// {@endtemplate}
@JsonSerializable()
class Invasion extends WorldstateObject {
  /// {@macro invasion}
  const Invasion({
    required super.id,
    required this.activation,
    required this.attacker,
    required this.attackingFaction,
    required this.completed,
    required this.completion,
    required this.count,
    required this.defender,
    required this.defenderReward,
    required this.attackerReward,
    required this.defendingFaction,
    required this.desc,
    required this.node,
    required this.nodeKey,
    required this.requiredRuns,
    required this.rewardTypes,
    required this.vsInfestation,
  });

  /// Creates a Invasion from Json map
  factory Invasion.fromJson(Map<String, dynamic> json) =>
      _$InvasionFromJson(json);

  /// The time the invasion started.
  final DateTime activation;

  /// A description for attacker
  final InvasionFaction attacker;

  /// A description for attackerReward
  final RelicReward attackerReward;

  /// A description for attackingFaction
  final String attackingFaction;

  /// A description for completed
  final bool completed;

  /// A description for completion
  final num completion;

  /// A description for count
  final int count;

  /// A description for defender
  final InvasionFaction defender;

  /// A description for defenderReward
  final RelicReward defenderReward;

  /// A description for defendingFaction
  final String defendingFaction;

  /// A description for desc
  final String desc;

  /// A description for node
  final String node;

  /// A description for nodeKey
  final String nodeKey;

  /// A description for requiredRuns
  final int requiredRuns;

  /// A description for rewardTypes
  final List<String> rewardTypes;

  /// A description for vsInfestation
  final bool vsInfestation;

  /// Creates a Json map from a Invasion
  Map<String, dynamic> toJson() => _$InvasionToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        activation,
        attacker,
        attackerReward,
        attackingFaction,
        completed,
        completion,
        count,
        defender,
        defenderReward,
        defendingFaction,
        desc,
        node,
        nodeKey,
        requiredRuns,
        rewardTypes,
        vsInfestation,
      ]);
  }
}

/// {@template invasionfaction}
/// A faction and reward associated with a given invasion.
/// {@endtemplate}
@JsonSerializable()
class InvasionFaction extends Equatable {
  /// {@macro invasionfaction}
  const InvasionFaction({
    required this.reward,
    required this.faction,
    required this.factionKey,
  });

  /// Creates an [InvasionFaction] from a json map.
  factory InvasionFaction.fromJson(Map<String, dynamic> json) {
    return _$InvasionFactionFromJson(json);
  }

  /// Reward awarded for siding with the faction.
  final RelicReward reward;

  /// The faction name translated..
  final String faction;

  /// The faction name.
  final String factionKey;

  /// Creates a json map from an [InvasionFaction].
  Map<String, dynamic> toJson() => _$InvasionFactionToJson(this);

  @override
  List<Object> get props => [reward, faction, factionKey];
}
