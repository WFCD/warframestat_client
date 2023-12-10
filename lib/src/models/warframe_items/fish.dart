import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'fish.g.dart';

/// {@template fish}
/// Fishy info.
/// {@endtemplate}
@JsonSerializable()
class Fish extends Item {
  /// {@macro fish}
  const Fish({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.imageName,
    required super.tradable,
    required super.patchlogs,
  });

  /// Create [Fish] from json map.
  factory Fish.fromJson(Map<String, dynamic> json) => _$FishFromJson(json);

  /// Create a json map from [Fish].
  @override
  Map<String, dynamic> toJson() => _$FishToJson(this);
}
