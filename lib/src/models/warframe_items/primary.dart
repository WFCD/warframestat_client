import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'primary.g.dart';

/// {@template primary}
/// Represents a Primary weapon
/// {@endtemplate}
@JsonSerializable()
class Primary extends Gun {
  /// {@macro primary}
  const new({
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
    required super.damage,
    required super.damagePerShot,
    required super.disposition,
    required super.fireRate,
    required super.omegaAttenuation,
    required super.polarities,
    required super.procChance,
    required super.slot,
    required super.tags,
    required super.totalDamage,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.releaseDate,
    required super.reloadTime,
    required super.maxLevelCap,
    required super.excludeFromCodex,
    required super.attacks,
    required super.patchlogs,
    required super.accuracy,
    required super.magazineSize,
    required super.multishot,
    required super.noise,
    required super.trigger,
  });

  /// Creates [Primary] from json data.
  factory fromJson(Map<String, dynamic> json) {
    return _$PrimaryFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$PrimaryToJson(this);
}

/// {@template primary}
/// Represents a Primary buildable weapon
///
/// Not all weapons are buildable i.e. Prisma weapons
/// {@endtemplate}
@JsonSerializable()
class PrimaryBuildable extends BuildableItem implements Primary {
  /// {@macro primary}
  const new({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.components,
    required super.imageName,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.damage,
    required this.damagePerShot,
    required this.fireRate,
    required super.isPrime,
    required this.omegaAttenuation,
    required this.polarities,
    required this.procChance,
    required this.slot,
    required this.tags,
    required this.totalDamage,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.releaseDate,
    required this.accuracy,
    required this.magazineSize,
    required this.multishot,
    required this.noise,
    required this.trigger,
    required this.reloadTime,
    required this.maxLevelCap,
    required super.masteryReq,
    required super.marketCost,
    required super.itemCount,
    required this.disposition,
    required this.attacks,
    required super.patchlogs,
    required super.bpCost,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.vaulted,
  });

  /// Creates [Primary] from json data.
  factory fromJson(Map<String, dynamic> json) {
    return _$PrimaryBuildableFromJson(json);
  }

  @override
  final List<GunAttack>? attacks;

  @override
  final num criticalChance;

  @override
  final num criticalMultiplier;

  @override
  final Damage? damage;

  @override
  final List<num> damagePerShot;

  @override
  final int? disposition;

  @override
  final num fireRate;

  @override
  final double omegaAttenuation;

  @override
  final List<String>? polarities;

  @override
  final double procChance;

  @override
  final int? slot;

  @override
  final List<String>? tags;

  @override
  final num totalDamage;

  @override
  @JsonKey(defaultValue: 30)
  final int maxLevelCap;

  @override
  final num? accuracy;

  @override
  final int? magazineSize;

  @override
  final int? multishot;

  @override
  final String? noise;

  @override
  final String? trigger;

  @override
  final num? reloadTime;

  @override
  Map<String, dynamic> toJson() => _$PrimaryBuildableToJson(this);
}
