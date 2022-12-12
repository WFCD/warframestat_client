import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'secondary.g.dart';

/// {@template secondary}
/// Secondary weapons.
/// {@endtemplate}
@JsonSerializable()
class Secondary extends Gun {
  /// {@macro secondary}
  const Secondary({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    super.bpCost,
    super.buildPrice = 0,
    super.buildQuantity = 1,
    super.buildTime = 0,
    super.skipBuildTimePrice = 0,
    super.consumeOnBuild = true,
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
    required super.multiShot,
    required super.noise,
    required super.trigger,
  });

  /// Creates [Secondary] from json data.
  factory Secondary.fromJson(Map<String, dynamic> json) {
    return _$SecondaryFromJson(json);
  }

  /// Creates a json map from [Secondary].
  @override
  Map<String, dynamic> toJson() => _$SecondaryToJson(this);
}
