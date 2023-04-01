import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'primary.g.dart';

/// {@template primary}
/// A primary weapon
/// {@endtemplate}
@JsonSerializable()
class Primary extends Gun {
  /// {@macro primary}
  const Primary({
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
    super.bpCost,
    super.buildPrice = 0,
    super.buildQuantity = 1,
    super.buildTime = 0,
    super.skipBuildTimePrice = 0,
    super.consumeOnBuild = true,
    super.vaulted,
  });

  /// Creates [Primary] from json data.
  factory Primary.fromJson(Map<String, dynamic> json) {
    return _$PrimaryFromJson(json);
  }

  /// Creates a json map from [Primary].
  @override
  Map<String, dynamic> toJson() => _$PrimaryToJson(this);
}
