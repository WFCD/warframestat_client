import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template item}
/// Abstract class for warframe-items
/// {@endtemplate}
abstract class Item extends Equatable {
  /// {@macro item}
  const Item({
    required this.uniqueName,
    required this.name,
    required this.description,
    required this.type,
    required this.category,
    required this.productCategory,
    required this.patchlogs,
    required this.imageName,
    required this.tradable,
    required this.releaseDate,
    required this.excludeFromCodex,
    required this.wikiaThumbnail,
    required this.wikiaUrl,
  });

  /// Unique name used within the game.
  final String uniqueName;

  /// Name of the item.
  ///
  /// This name is reflected of the name seen in-game. [uniqueName] on he other
  /// are the names of the item used internally by game files.
  final String name;

  /// Item decription.
  final String? description;

  /// Item type.
  @ItemTypeConverter()
  final ItemType type;

  /// Item category.
  final String category;

  /// Item product category.
  final String? productCategory;

  /// Whether this item is tradable or not.
  @JsonKey(defaultValue: false)
  final bool tradable;

  /// Item changes throughout game version.
  final List<Patchlog>? patchlogs;

  /// Item image name.
  final String? imageName;

  /// The date the item was released in game.
  final String? releaseDate;

  /// Whether the item is excluded from the codex or not.
  final bool? excludeFromCodex;

  /// Wikia [Item] thumbnail url.
  final String? wikiaThumbnail;

  /// [Item] wikia url.
  final String? wikiaUrl;

  /// Creates a json map from the giving [Item].
  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [
        name,
        description,
        type,
        category,
        productCategory,
        tradable,
        patchlogs,
        imageName,
        releaseDate,
        excludeFromCodex,
        wikiaThumbnail,
        wikiaUrl,
      ];
}

/// {@template equipableitem}
/// Represents [Item]s that can be equiped.
/// {@endtemplate}
abstract class EquipableItem extends Item {
  /// {@macro equipableitem}
  const EquipableItem({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
    this.isPrime = false,
    super.releaseDate,
    super.excludeFromCodex,
    super.wikiaThumbnail,
    super.wikiaUrl,
    this.vaulted,
  });

  /// Whether the [Item] is a prime item.
  final bool isPrime;

  /// Whether the [Item] has been removed from the drop rotation.
  final bool? vaulted;

  @override
  List<Object?> get props => super.props..addAll([isPrime, vaulted]);
}

/// {@template droppableitem}
/// Contains extra data for [Item]s that drop in-game.
/// {@endtemplate}
abstract class DroppableItem extends Item {
  /// {@macro droppableitem}
  const DroppableItem({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.patchlogs,
    required super.imageName,
    super.releaseDate,
    super.excludeFromCodex,
    this.rarity,
    this.probability,
    this.drops,
    super.wikiaThumbnail,
    super.wikiaUrl,
  });

  /// [Item] rarity.

  final Rarity? rarity;

  /// Chances of the [Item] dropping.
  final num? probability;

  /// List of drop [Item] locations.
  final List<Drop>? drops;

  @override
  List<Object?> get props => super.props..addAll([rarity, probability, drops]);
}

/// {@template buildableitem}
/// [Item]s that require building.
/// {@endtemplate}
abstract class BuildableItem extends EquipableItem {
  /// {@macro buildableitem}
  const BuildableItem({
    required super.uniqueName,
    required super.name,
    required super.description,
    required super.type,
    required super.category,
    required super.productCategory,
    required super.tradable,
    required super.isPrime,
    required super.patchlogs,
    required String super.imageName,
    required this.buildPrice,
    required this.buildQuantity,
    required this.buildTime,
    required this.skipBuildTimePrice,
    required this.consumeOnBuild,
    required super.vaulted,
    required this.masteryReq,
    required this.components,
    required super.releaseDate,
    required this.marketCost,
    required this.bpCost,
    required this.itemCount,
    required super.wikiaThumbnail,
    required super.wikiaUrl,
  });

  /// Mastery requirement needed to build item.
  final int? masteryReq;

  /// The credit price to start building.
  @JsonKey(defaultValue: 0)
  final int buildPrice;

  /// Amount of [Item]s built per blueprint.
  final int buildQuantity;

  /// Time it takes for the build to finish.
  final int buildTime;

  /// Platnuim needed to skip [buildTime].
  final int skipBuildTimePrice;

  /// Whether the blueprint is consumed after building.
  final bool consumeOnBuild;

  /// List of components.
  final List<Component>? components;

  /// Platnuim price in the warframe market.
  final int? marketCost;

  /// Price of blueprint;
  final int? bpCost;

  /// Item count.
  final int? itemCount;

  @override
  List<Object?> get props {
    return super.props
      ..addAll([
        masteryReq,
        buildPrice,
        buildQuantity,
        buildTime,
        skipBuildTimePrice,
        consumeOnBuild,
        components,
        marketCost,
        bpCost,
        itemCount,
      ]);
  }
}
