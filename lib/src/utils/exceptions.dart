/// {@template item_not_found}
/// Item exceptions thrown when an item was not found.
/// {@endtemplate}
class ItemNotFound implements Exception {
  /// {@macro item_not_found}
  const ItemNotFound(this.item);

  /// Item name or uniqueName.
  final String item;

  @override
  String toString() => '$item was not found.';
}
