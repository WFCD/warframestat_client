import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'secondary.g.dart';

/// {@template secondary}
/// Secondary weapons.
/// {@endtemplate}
@JsonSerializable()
class Secondary extends BuildableItem implements Gun {
  /// {@macro secondary}
  const Secondary({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.components,
    required super.imageName,
    required this.attacks,
    required this.criticalChance,
    required this.criticalMultiplier,
    required this.damage,
    required this.damagePerShot,
    required this.disposition,
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
    required super.buildPrice,
    super.patchlogs,
    super.bpCost,
    super.buildQuantity = 1,
    super.buildTime = 0,
    super.skipBuildTimePrice = 0,
    super.consumeOnBuild = true,
    super.vaulted,
  });

  /// Creates [Secondary] from json data.
  factory Secondary.fromJson(Map<String, dynamic> json) {
    return _$SecondaryFromJson(json);
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

  /// Creates a json map from [Secondary].
  @override
  Map<String, dynamic> toJson() => _$SecondaryToJson(this);
}
