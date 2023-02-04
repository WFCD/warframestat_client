import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'resource.g.dart';

/// {@template resourcebuildable}
/// A buildable resource
/// {@endtemplate}
@JsonSerializable()
class ResourceBuildable extends BuildableItem {
  /// {@macro resourcebuildable}
  const ResourceBuildable({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    super.isPrime = false,
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.patchlogs,
  });

  /// Creates a Resource from Json map
  factory ResourceBuildable.fromJson(Map<String, dynamic> data) =>
      _$ResourceBuildableFromJson(data);

  /// Creates a Json map from a Resource
  @override
  Map<String, dynamic> toJson() => _$ResourceBuildableToJson(this);
}

// {@template resource}
/// A buildable resource
/// {@endtemplate}
@JsonSerializable()
class Resource extends DroppableItem {
  /// {@macro resource}
  const Resource({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.patchlogs,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.drops,
  });

  /// Creates a Resource from Json map
  factory Resource.fromJson(Map<String, dynamic> data) =>
      _$ResourceFromJson(data);

  /// Creates a Json map from a Resource
  @override
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}