import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'helminth.g.dart';

/// {@template helminth}
/// Data class for Helminth and it's abilities
/// {@endtemplate}
@JsonSerializable()
class Helminth extends DroppableItem {
  /// {@macro helminth}
  const Helminth({
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
    required super.wikiaThumbnail,
    required super.wikiaUrl,
    required super.excludeFromCodex,
    required super.drops,
    required this.abilities,
  });

  /// Creates an instance from a json map
  factory Helminth.fromJson(Map<String, dynamic> json) {
    return _$HelminthFromJson(json);
  }

  /// Helminth abilities
  final List<Ability> abilities;

  @override
  Map<String, dynamic> toJson() => _$HelminthToJson(this);
}
