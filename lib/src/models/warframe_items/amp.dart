import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'amp.g.dart';

/// {@template amp}
/// Operator Amp
/// {@endtemplate}
@JsonSerializable()
class Amp extends Secondary {
  /// {@macro amp}
  const Amp({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.components,
    required super.imageName,
    required super.attacks,
    required super.criticalChance,
    required super.criticalMultiplier,
    required super.damage,
    required super.damagePerShot,
    required super.disposition,
    required super.fireRate,
    required super.isPrime,
    required super.omegaAttenuation,
    required super.polarities,
    required super.procChance,
    required super.slot,
    required super.tags,
    required super.totalDamage,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.releaseDate,
    required super.accuracy,
    required super.magazineSize,
    required super.multishot,
    required super.noise,
    required super.trigger,
    required super.reloadTime,
    required super.maxLevelCap,
    required super.masteryReq,
    required super.marketCost,
    required super.itemCount,
    required super.buildPrice,
  });

  /// Creates [Amp] from json data.
  factory Amp.fromJson(Map<String, dynamic> json) {
    return _$AmpFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() => _$AmpToJson(this);
}

/// {@template amp_buildable}
/// Operator buildable Amps
///
/// The first Amp is obtained and thus not buildable
/// {@endtemplate}
@JsonSerializable()
class AmpBuildable extends BuildableItem implements Amp {
  /// {@macro amp_buildable}
  const AmpBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.isPrime,
    required super.patchlogs,
    required super.imageName,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.vaulted,
    required super.masteryReq,
    required super.components,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required this.attacks,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.damage,
    required this.damagePerShot,
    required this.disposition,
    required this.fireRate,
    required this.omegaAttenuation,
    required this.polarities,
    required this.procChance,
    required this.slot,
    required this.tags,
    required this.totalDamage,
    required this.maxLevelCap,
    required this.accuracy,
    required this.magazineSize,
    required this.multishot,
    required this.noise,
    required this.trigger,
    required this.reloadTime,
    required super.buildPrice,
  });

  /// Creates [Amp] from json data.
  factory AmpBuildable.fromJson(Map<String, dynamic> json) {
    return _$AmpBuildableFromJson(json);
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
  Map<String, dynamic> toJson() => _$AmpBuildableToJson(this);
}
