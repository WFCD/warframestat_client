import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/worldstate/reward.dart';

part 'mission.g.dart';

/// {@template mission}
/// Mission details.
/// {@endtemplate}
@JsonSerializable()
class Mission extends Equatable {
  /// {@macro mission}
  const Mission({
    required this.node,
    required this.nodeKey,
    required this.faction,
    required this.factionKey,
    required this.reward,
    required this.maxEnemyLevel,
    required this.minEnemyLevel,
    required this.maxWaveNum,
    required this.type,
    required this.typeKey,
    required this.nightmare,
    required this.archwingRequired,
    required this.isSharkwing,
    required this.enemySpec,
    required this.levelOverride,
    required this.advancedSpawners,
    required this.requiredItems,
    required this.consumeRequiredItems,
    required this.leadersAlwwaysAllowed,
    required this.levelAuras,
    required this.description,
  });

  /// Creates a Mission from Json map
  factory Mission.fromJson(Map<String, dynamic> data) =>
      _$MissionFromJson(data);

  /// The node the mission is taking place in.
  ///
  /// This will reflect the locale the worldstate was requested in.
  ///
  /// See [Mission.nodeKey] for an untouched version.
  final String node;

  /// The node the mission is taking place in.
  ///
  /// This will always be in english regardless of locale requested.
  final String? nodeKey;

  /// The faction players will be fighting against.
  ///
  /// This will reflect the locale the worldstate was requested in.
  ///
  /// See [Mission.factionKey] for an untouched version.
  @JsonKey(includeIfNull: false)
  final String? faction;

  /// The faction players will be fighting against.
  ///
  /// This will always be in english regardless of locale requested.
  @JsonKey(includeIfNull: false)
  final String? factionKey;

  /// Mission reward.
  @JsonKey(includeIfNull: false)
  final Reward? reward;

  /// Max level enemies will be at.
  @JsonKey(includeIfNull: false)
  final int? maxEnemyLevel;

  /// Minimum level the enemies will be at.
  @JsonKey(includeIfNull: false)
  final int? minEnemyLevel;

  /// If the mission is an endless one this will be the max waves
  /// needed to complete the mission.
  ///
  /// Will be null is it's not an endless mission type
  @JsonKey(includeIfNull: false)
  final int? maxWaveNum;

  /// The mission type.
  final String type;

  /// The mission type.
  ///
  /// This will always be en regardless of locale.
  final String? typeKey;

  /// If this is a nightmare mission.
  final bool? nightmare;

  /// Archwing required to start mission.
  final bool? archwingRequired;

  /// Archwing required to start mission.
  final bool? isSharkwing;

  /// Enemy spec for the mission.
  @JsonKey(includeIfNull: false)
  final String? enemySpec;

  /// Override for the map on this mission.
  @JsonKey(includeIfNull: false)
  final String? levelOverride;

  /// List of advance spawns.
  final List<String>? advancedSpawners;

  /// Items required to enter mission.
  final List<String>? requiredItems;

  /// Whether the [Mission.requiredItems] will be consumed on entry
  /// or in Mission.
  @JsonKey(includeIfNull: false)
  final bool? consumeRequiredItems;

  /// Is the leader always allowed.
  @JsonKey(includeIfNull: false)
  final bool? leadersAlwwaysAllowed;

  /// Mission effects.
  final List<String>? levelAuras;

  /// A mission description.
  @JsonKey(includeIfNull: false)
  final String? description;

  /// Creates a Json map from a Mission
  Map<String, dynamic> toJson() => _$MissionToJson(this);

  @override
  List<Object?> get props {
    return [
      node,
      nodeKey,
      faction,
      factionKey,
      reward,
      maxEnemyLevel,
      minEnemyLevel,
      maxWaveNum,
      type,
      typeKey,
      nightmare,
      archwingRequired,
      isSharkwing,
      enemySpec,
      levelOverride,
      advancedSpawners,
      requiredItems,
      consumeRequiredItems,
      leadersAlwwaysAllowed,
      levelAuras,
      description,
    ];
  }
}
