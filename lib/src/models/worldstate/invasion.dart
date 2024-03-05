import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'invasion.g.dart';

/// {@template invasion}
/// Invasion description
/// {@endtemplate}
@JsonSerializable()
class Invasion extends WorldstateObject {
  /// {@macro invasion}
  const Invasion({
    required String super.id,
    required DateTime super.activation,
    required this.attacker,
    required this.attackingFaction,
    required this.completed,
    required this.completion,
    required this.count,
    required this.defender,
    required this.desc,
    required this.node,
    required this.nodeKey,
    required this.requiredRuns,
    required this.rewardTypes,
    required this.vsInfestation,
    required this.eta,
  });

  /// Creates a Invasion from Json map
  factory Invasion.fromJson(Map<String, dynamic> json) =>
      _$InvasionFromJson(json);

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  /// A description for attacker
  final InvasionFaction attacker;

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

  /// An estimated time the [Invasion] will end.
  final String eta;

  /// Creates a Json map from a Invasion
  Map<String, dynamic> toJson() => _$InvasionToJson(this);

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        activation,
        attacker,
        attackingFaction,
        completed,
        completion,
        count,
        defender,
        desc,
        node,
        nodeKey,
        requiredRuns,
        rewardTypes,
        vsInfestation,
        eta,
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
  final Reward? reward;

  /// The faction name translated..
  final String faction;

  /// The faction name.
  final String factionKey;

  /// Creates a json map from an [InvasionFaction].
  Map<String, dynamic> toJson() => _$InvasionFactionToJson(this);

  @override
  List<Object?> get props => [reward, faction, factionKey];
}
