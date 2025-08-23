import 'package:json_annotation/json_annotation.dart';
import 'package:warframestat_client/src/models/models.dart';
import 'package:warframestat_client/src/utils/items_utils.dart';

/// Converts [Item] to their proper types
class ItemConverter<T extends Item> extends JsonConverter<Item, Map<String, dynamic>> {
  ///
  const ItemConverter();

  @override
  Item fromJson(Map<String, dynamic> json) => toItem(json);

  @override
  Map<String, dynamic> toJson(Item object) => (object as ItemCommon).toJson();
}
