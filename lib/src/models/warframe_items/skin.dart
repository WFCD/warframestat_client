import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'skin.g.dart';

/// {@template skin}
/// Skin description
/// {@endtemplate}
@JsonSerializable()
class Skin extends Item {
  /// {@macro skin}
  const Skin({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.imageName,
    super.patchlogs,
  });

  /// Creates a Skin from Json map
  factory Skin.fromJson(Map<String, dynamic> data) => _$SkinFromJson(data);

  /// Creates a Json map from a Skin
  @override
  Map<String, dynamic> toJson() => _$SkinToJson(this);
}

/// {@template skin}
/// Skin description
/// {@endtemplate}
@JsonSerializable()
class SkinBuildable extends BuildableItem implements Skin {
  /// {@macro skin}
  const SkinBuildable({
    required super.uniqueName,
    required super.description,
    required super.name,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.imageName,
    super.isPrime = false,
    super.patchlogs,
  });

  /// Creates a Skin from Json map
  factory SkinBuildable.fromJson(Map<String, dynamic> data) =>
      _$SkinBuildableFromJson(data);

  /// Creates a Json map from a Skin
  @override
  Map<String, dynamic> toJson() => _$SkinBuildableToJson(this);
}
