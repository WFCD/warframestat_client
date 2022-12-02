// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'persistent_enemy.g.dart';

const _deprecationMessage = """
Since acolytes now appear in steel path it doesn't seem like this will 
get much use.
  """;

/// {@template persistent_enemies}
/// Acolyte data and attacks in the Sol system.
/// {@endtemplate}
@Deprecated(_deprecationMessage)
@JsonSerializable()
class PersistentEnemy extends Equatable {
  /// {@macro persistent_enemies}
  @Deprecated(_deprecationMessage)
  const PersistentEnemy({
    required this.locationTag,
    required this.agentType,
    required this.rank,
    required this.healthPercent,
    required this.fleeDamage,
    required this.region,
    required this.lastDiscoveredTime,
    required this.lastDiscoveredAt,
    required this.isDiscovered,
    required this.isUsingTicketing,
    required this.pid,
  });

  /// Creates a PersistentEnemies from Json map
  @Deprecated(_deprecationMessage)
  factory PersistentEnemy.fromJson(Map<String, dynamic> json) =>
      _$PersistentEnemyFromJson(json);

  /// A description for locationTag
  final String locationTag;

  /// A description for agentType
  final String agentType;

  /// A description for rank
  final int rank;

  /// A description for healthPercent
  final int healthPercent;

  /// A description for fleeDamage
  final int fleeDamage;

  /// A description for region
  final String region;

  /// A description for lastDiscoveredTime
  final String lastDiscoveredTime;

  /// A description for lastDiscoveredAt
  final String lastDiscoveredAt;

  /// A description for isDiscovered
  final bool isDiscovered;

  /// A description for isUsingTicketing
  final bool isUsingTicketing;

  /// A description for pid
  final String pid;

  /// Creates a Json map from a PersistentEnemies
  Map<String, dynamic> toJson() => _$PersistentEnemyToJson(this);

  @override
  List<Object> get props {
    return [
      locationTag,
      agentType,
      rank,
      healthPercent,
      fleeDamage,
      region,
      lastDiscoveredTime,
      lastDiscoveredAt,
      isDiscovered,
      isUsingTicketing,
      pid,
    ];
  }
}
