import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

part 'minimal_item.g.dart';

/// {@template minimal_item}
/// Creates a minimal item instance for searches.
/// {@endtemplate}
@JsonSerializable()
class MinimalItem implements Item {
  /// {@macro minimal_item}
  const MinimalItem({
    required this.uniqueName,
    required this.name,
    required this.description,
    required this.type,
    required this.category,
    required this.productCategory,
    required this.imageName,
    required this.vaultDate,
    required this.vaulted,
  });

  /// Creates an instance of [MinimalItem] from json.
  factory MinimalItem.fromJson(Map<String, dynamic> json) {
    return _$MinimalItemFromJson(json);
  }

  /// Unique name used within the game.
  @override
  final String uniqueName;

  /// Name of the item.
  ///
  /// This name is reflected of the name seen in-game. [uniqueName] on he other
  /// are the names of the item used internally by game files.
  @override
  final String name;

  /// Item decription.
  @override
  final String? description;

  /// Item type.
  @override
  @ItemTypeConverter()
  final ItemType type;

  /// Item category.
  @override
  final String category;

  /// Item product category.
  @override
  final String? productCategory;

  /// Item image name.
  @override
  final String? imageName;

  /// Incase of a prime item this will be the date the item was vaulted.
  final String? vaultDate;

  /// Incase of a prime item this is whether the item is vaulted or not.
  final bool? vaulted;

  @override
  Map<String, dynamic> toJson() => _$MinimalItemToJson(this);

  @override
  List<Object?> get props {
    return [
      name,
      description,
      type,
      category,
      productCategory,
      tradable,
      imageName,
    ];
  }

  /// Not implemented for [MinimalItem]
  @override
  bool? get excludeFromCodex => null;

  /// Not implemented for [MinimalItem]
  @override
  String? get releaseDate => null;

  /// Not implemented for [MinimalItem]
  @override
  bool? get stringify => null;

  /// Not implemented for [MinimalItem]
  @override
  bool get tradable => false;

  /// Not implemented for [MinimalItem]
  @override
  String? get wikiaThumbnail => null;

  /// Not implemented for [MinimalItem]
  @override
  String? get wikiaUrl => null;

  /// Not implemented for [MinimalItem]
  @override
  List<Patchlog>? get patchlogs => null;
}
