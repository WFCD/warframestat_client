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
    required super.type,
    required super.category,
    required super.tradable,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.imageName,
  });

  /// Creates [PetResource] from a json map.
  factory PetResource.fromJson(Map<String, dynamic> json) {
    return _$PetResourceFromJson(json);
  }

  /// Creates a json map from a [PetResource].
  Map<String, dynamic> toJson() => _$PetResourceToJson(this);
}
