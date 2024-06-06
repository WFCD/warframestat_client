import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'pet_resource.g.dart';

/// {@template petresource}
/// A pet resource.
/// {@endtemplate}
@JsonSerializable()
class PetResources extends Item {
  /// {@macro petresource}
  const PetResources({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.releaseDate,
    required super.excludeFromCodex,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Creates [PetResources] from a json map.
  factory PetResources.fromJson(Map<String, dynamic> json) {
    return _$PetResourcesFromJson(json);
  }

  /// Creates a json map from a [PetResources].
  @override
  Map<String, dynamic> toJson() => _$PetResourcesToJson(this);
}

/// {@template petresourcebuildable}
/// A pet resource that requires building.
/// {@endtemplate}
@JsonSerializable()
class PetResourcesBuildable extends BuildableItem implements PetResources {
  /// {@macro petresourcebuildable}
  const PetResourcesBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.patchlogs,
    required super.vaulted,
    required super.masteryReq,
    required super.components,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.isPrime,
  });

  /// Creates [PetResourcesBuildable] from a json map.
  factory PetResourcesBuildable.fromJson(Map<String, dynamic> json) {
    return _$PetResourcesBuildableFromJson(json);
  }

  /// Creates a json map from a [PetResourcesBuildable].
  @override
  Map<String, dynamic> toJson() => _$PetResourcesBuildableToJson(this);
}
