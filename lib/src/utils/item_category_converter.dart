import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template item_category_converter}
/// Converts the type into an enum and back without changing the data
/// {@endtemplate}
class ItemCategoryConverter extends JsonConverter<ItemCategory, String> {
  /// {@macro item_category_converter}
  const ItemCategoryConverter();

  @override
  ItemCategory fromJson(String json) {
    return ItemCategory.byCategory(json);
  }

  @override
  String toJson(ItemCategory object) {
    return object.category;
  }
}
