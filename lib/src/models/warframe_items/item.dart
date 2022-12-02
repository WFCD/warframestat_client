import 'package:equatable/equatable.dart';

/// {@template item}
/// Base class for warframe-items
/// {@endtemplate}
abstract class Item extends Equatable {
  /// {@macro item}
  const Item({
    required this.uniqueName,
    required this.name,
    this.description,
    required this.type,
    required this.category,
    this.tradable = false,
    this.patchlogs,
    this.imageName,
    this.releaseDate,
    this.excludeFromCodex,
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
  final String type;

  /// Item category.
  final String category;

  /// Whether this item is tradable or not.
  final bool tradable;

  /// Item changes throughout game version.
  final List<dynamic>? patchlogs;

  /// Item image name.
  final String? imageName;

  /// The date the item was released in game.
  final String? releaseDate;

  /// Whether the item is excluded from the codex or not.
  final bool? excludeFromCodex;
}
