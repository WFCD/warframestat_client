import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'pet_resource.g.dart';

/// {@template petresource}
/// A pet resource.
/// {@endtemplate}
@JsonSerializable()
class PetResource extends BuildableItem {
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
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.patchlogs,
    super.isPrime = false,
  });

  /// Creates [PetResource] from a json map.
  factory PetResource.fromJson(Map<String, dynamic> json) {
    return _$PetResourceFromJson(json);
  }

  /// Creates a json map from a [PetResource].
  @override
  Map<String, dynamic> toJson() => _$PetResourceToJson(this);
}
