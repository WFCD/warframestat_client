import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'resource.g.dart';

/// {@template resource}
/// A buildable resource
/// {@endtemplate}
@JsonSerializable()
class Resource extends DroppableItem {
  /// {@macro resource}
  const Resource({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.imageName,
    required super.patchlogs,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.drops,
  });

  /// Creates a Resource from Json map
  factory Resource.fromJson(Map<String, dynamic> data) => _$ResourceFromJson(data);

  /// Creates a Json map from a Resource
  @override
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}

/// {@template resourcebuildable}
/// A buildable resource
/// {@endtemplate}
@JsonSerializable()
class ResourceBuildable extends BuildableItem implements Resource {
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
    required super.buildPrice,
    required super.buildQuantity,
    required super.buildTime,
    required super.skipBuildTimePrice,
    required super.consumeOnBuild,
    required super.components,
    required super.patchlogs,
    required super.vaulted,
    required super.masteryReq,
    required super.releaseDate,
    required super.marketCost,
    required super.bpCost,
    required super.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  }) : super(isPrime: false);

  /// Creates a Resource from Json map
  factory ResourceBuildable.fromJson(Map<String, dynamic> data) => _$ResourceBuildableFromJson(data);

  /// Creates a Json map from a Resource
  @override
  Map<String, dynamic> toJson() => _$ResourceBuildableToJson(this);

  @override
  List<Drop>? get drops => null;

  @override
  num? get probability => null;

  @override
  Rarity? get rarity => null;
}
