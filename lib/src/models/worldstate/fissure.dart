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
    required this.node,
    required this.missionType,
    required this.missionTypeKey,
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

  @override
  String get id => super.id!;

  @override
  DateTime get activation => super.activation!;

  @override
  DateTime get expiry => super.expiry!;

  /// A description for node
  final String node;

  /// A description for missionType
  final String missionType;

  /// A description for missionKey
  final String? missionTypeKey;

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
  List<Object?> get props => super.props..addAll([node, missionType, tier, tierNum, enemy, enemyKey, isStorm, isHard]);
}
