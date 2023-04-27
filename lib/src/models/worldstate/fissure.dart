import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'fissure.g.dart';

/// {@template fissure}
/// Fissure description
/// {@endtemplate}
@JsonSerializable()
class Fissure extends WorldstateObject {
  /// {@macro fissure}
  const Fissure({
    required String super.id,
    required DateTime super.activation,
    required DateTime super.expiry,
    required this.active,
    required this.node,
    required this.expired,
    required this.missionType,
    required this.missionKey,
    required this.tier,
    required this.tierNum,
    required this.enemy,
    required this.enemyKey,
    required this.isStorm,
    required this.isHard,
  });

  /// Creates a Event from Json map
  factory Fissure.fromJson(Map<String, dynamic> json) {
    return _$FissureFromJson(json);
  }

  /// A description for active
  final bool active;

  /// A description for node
  final String node;

  /// Whether instance was expired on objects creation.
  final bool expired;

  /// A description for missionType
  final String missionType;

  /// A description for missionKey
  final String? missionKey;

  /// A description for tier
  final String tier;

  /// A description for tierNum
  final int tierNum;

  /// A description for enemy
  final String enemy;

  /// A description for enemyKey
  final String? enemyKey;

  /// A description for isStorm
  final bool isStorm;

  /// A description for isHard
  final bool isHard;

  /// Creates a Json map from a Fissure
  Map<String, dynamic> toJson() => _$FissureToJson(this);

  @override
  List<Object?> get props => super.props
    ..addAll([
      active,
      node,
      expired,
      missionType,
      missionKey,
      tier,
      tierNum,
      enemy,
      enemyKey,
      isStorm,
      isHard
    ]);
}
