import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/warframestat_client.dart';

/// {@template item_category_converter}
/// Converts the type into an enum and back without changing the data
/// {@endtemplate}
class ItemTypeConverter extends JsonConverter<ItemType, String> {
  /// {@macro item_category_converter}
  const ItemTypeConverter();

  @override
  ItemType fromJson(String json) {
    return ItemType.byCategory(json);
  }

  @override
  String toJson(ItemType object) {
    return object.category;
  }
}
