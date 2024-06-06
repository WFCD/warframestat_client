import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'sentinel.g.dart';

/// {@template sentinal}
/// Sentinal data class for buildable sentinels
/// {@endtemplate}
@JsonSerializable()
class Sentinel extends Companion {
  /// {@macro sentinal}
  const Sentinel({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    required super.patchlogs,
    required this.armor,
    required this.health,
    required this.shield,
    required this.stamina,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Sentinal from Json map
  factory Sentinel.fromJson(Map<String, dynamic> data) =>
      _$SentinelFromJson(data);

  /// Armor health.
  final int armor;

  /// Raw health.
  final int health;

  /// Shield health.
  final int shield;

  /// Stamina.
  final num stamina;

  /// Creates a Json map from a Sentinal
  @override
  Map<String, dynamic> toJson() => _$SentinelToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([armor, health, shield, stamina]);
}

/// {@template sentinal_buildable}
/// Sentinal data class for buildable sentinels
/// {@endtemplate}
@JsonSerializable()
class SentinelBuildable extends BuildableItem implements Sentinel {
  /// {@macro sentinal_buildable}
  const SentinelBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
    required List<Component> super.components,
    required super.patchlogs,
    required super.isPrime,
    required this.armor,
    required this.health,
    required this.shield,
    required this.stamina,
    required super.vaulted,
    required super.masteryReq,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates a Sentinal from Json map
  factory SentinelBuildable.fromJson(Map<String, dynamic> data) =>
      _$SentinelBuildableFromJson(data);

  /// Armor health.
  @override
  final int armor;

  /// Raw health.
  @override
  final int health;

  /// Shield health.
  @override
  final int shield;

  /// Stamina.
  @override
  final num stamina;

  /// Creates a Json map from a Sentinal
  @override
  Map<String, dynamic> toJson() => _$SentinelBuildableToJson(this);

  @override
  List<Object?> get props =>
      super.props..addAll([armor, health, shield, stamina, isPrime]);
}

/// {@template sentinel_weapon}
/// A sentinel weapon aquired when the the sentinel is built
/// {@endtemplate}
@JsonSerializable()
class SentinelWeapon extends Weapon {
  /// {@macro sentinel_weapon}
  const SentinelWeapon({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.damagePerShot,
    required super.disposition,
    required super.fireRate,
    required super.omegaAttenuation,
    required super.polarities,
    required super.procChance,
    required super.slot,
    required super.totalDamage,
    required super.maxLevelCap,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.patchlogs,
    required List<GunAttack> super.attacks,
    required super.damage,
    required super.tags,
  });

  /// JSON Map to [SentinelWeapon]
  factory SentinelWeapon.fromJson(Map<String, dynamic> json) {
    return _$SentinelWeaponFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$SentinelWeaponToJson(this);
}
