import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'gear.g.dart';

/// {@template gear}
/// Warframe gear.
/// {@endtemplate}
@JsonSerializable()
class Gear extends ItemCommon {
  /// {@macro gear}
  const Gear({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates [Gear] from a json map.
  factory Gear.fromJson(Map<String, dynamic> json) => _$GearFromJson(json);

  /// Creates a json map from [Gear].
  @override
  Map<String, dynamic> toJson() => _$GearToJson(this);
}

/// {@template gear}
/// Warframe gear.
/// {@endtemplate}
@JsonSerializable()
class GearBuildable extends BuildableItem implements Gear {
  /// {@macro gear}
  const GearBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
    required super.isPrime,
    required super.components,
    required super.vaulted,
    required super.masteryReq,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates [Gear] from a json map.
  factory GearBuildable.fromJson(Map<String, dynamic> json) => _$GearBuildableFromJson(json);

  /// Creates a json map from [Gear].
  @override
  Map<String, dynamic> toJson() => _$GearBuildableToJson(this);
}
