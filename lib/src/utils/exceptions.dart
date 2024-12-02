import 'package:warframestat_client/src/utils/item_type.dart';

/// {@template item_not_found}
/// Item exceptions thrown when an item was not found.
/// {@endtemplate}
class ItemNotFound implements Exception {
  /// {@macro item_not_found}
  const ItemNotFound(this.name);

  /// Item name or uniqueName.
  final String name;

  @override
  String toString() => '$name was not found.';
}

/// {@template weapon_not_valid}
/// Throw when an item isn't a valid weapon
/// {@endtemplate}
class WeaponNotValid implements Exception {
  /// {@macro weapon_not_valid}
  const WeaponNotValid(this.name, this.type);

  /// Item name
  final String name;

  /// Item type
  final ItemType type;

  @override
  String toString() => '$name is ${type.type}';
}
