import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'pet_resource.g.dart';

/// {@template petresource}
/// A pet resource.
/// {@endtemplate}
abstract class PetResource extends Item {
  /// {@macro petresource}
  const PetResource({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
  });
}

/// {@template petresourcebuildable}
/// A pet resource that requires building.
/// {@endtemplate}
@JsonSerializable()
class PetResourcesBuildable extends BuildableItem implements PetResource {
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
    super.isPrime = false,
  });

  /// Creates [PetResourcesBuildable] from a json map.
  factory PetResourcesBuildable.fromJson(Map<String, dynamic> json) {
    return _$PetResourcesBuildableFromJson(json);
  }

  /// Creates a json map from a [PetResourcesBuildable].
  @override
  Map<String, dynamic> toJson() => _$PetResourcesBuildableToJson(this);
}

/// {@template petresourcemisc}
/// A pet misc resource.
/// {@endtemplate}
@JsonSerializable()
class PetResourcesMisc extends PetResource {
  /// {@template petresourcemisc}
  /// A pet misc resource.
  /// {@endtemplate}
  const PetResourcesMisc({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
  });

  /// Creates [PetResourcesMisc] from a json map.
  factory PetResourcesMisc.fromJson(Map<String, dynamic> json) {
    return _$PetResourcesMiscFromJson(json);
  }

  /// Creates a json map from a [PetResourcesMisc].
  @override
  Map<String, dynamic> toJson() => _$PetResourcesMiscToJson(this);
}
