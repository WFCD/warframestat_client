// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minimal_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MinimalItem _$MinimalItemFromJson(Map json) => $checkedCreate(
  'MinimalItem',
  json,
  ($checkedConvert) {
    final val = MinimalItem(
      uniqueName: $checkedConvert('uniqueName', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      type: $checkedConvert(
        'type',
        (v) => const ItemTypeConverter().fromJson(v as String),
      ),
      category: $checkedConvert('category', (v) => v as String),
      productCategory: $checkedConvert('productCategory', (v) => v as String?),
      imageName: $checkedConvert('imageName', (v) => v as String?),
      tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
      excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
      wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
      vaultDate: $checkedConvert('vaultDate', (v) => v as String?),
      vaulted: $checkedConvert('vaulted', (v) => v as bool?),
      masterable: $checkedConvert('masterable', (v) => v as bool?),
    );
    return val;
  },
);

Map<String, dynamic> _$MinimalItemToJson(
  MinimalItem instance,
) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  if (instance.productCategory case final value?) 'productCategory': value,
  'tradable': instance.tradable,
  if (instance.imageName case final value?) 'imageName': value,
  if (instance.excludeFromCodex case final value?) 'excludeFromCodex': value,
  if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
  if (instance.vaultDate case final value?) 'vaultDate': value,
  if (instance.vaulted case final value?) 'vaulted': value,
  if (instance.masterable case final value?) 'masterable': value,
};
