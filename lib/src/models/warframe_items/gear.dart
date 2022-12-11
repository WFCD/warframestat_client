import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'gear.g.dart';

/// {@template gear}
/// Warframe gear.
/// {@endtemplate}
@JsonSerializable()
class Gear extends Item {
  /// {@macro gear}
  const Gear({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
  });

  /// Creates [Gear] from a json map.
  factory Gear.fromJson(Map<String, dynamic> json) => _$GearFromJson(json);

  /// Creates a json map from [Gear].
  Map<String, dynamic> toJson() => _$GearToJson(this);
}

/// {@template gear}
/// Warframe gear.
/// {@endtemplate}
@JsonSerializable()
class GearBuildable extends BuildableItem {
  /// {@macro gear}
  const GearBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.tradable,
    required super.patchlogs,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
    super.components,
  });

  /// Creates [Gear] from a json map.
  factory GearBuildable.fromJson(Map<String, dynamic> json) =>
      _$GearBuildableFromJson(json);

  /// Creates a json map from [Gear].
  Map<String, dynamic> toJson() => _$GearBuildableToJson(this);
}
