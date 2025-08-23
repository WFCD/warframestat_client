// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'fish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fish _$FishFromJson(Map json) => $checkedCreate('Fish', json, (
  $checkedConvert,
) {
  final val = Fish(
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
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$FishToJson(Fish instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  'description': ?instance.description,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  'productCategory': ?instance.productCategory,
  'tradable': instance.tradable,
  'patchlogs': ?instance.patchlogs?.map((e) => e.toJson()).toList(),
  'imageName': ?instance.imageName,
  'releaseDate': ?instance.releaseDate,
  'excludeFromCodex': ?instance.excludeFromCodex,
  'wikiaThumbnail': ?instance.wikiaThumbnail,
  'wikiaUrl': ?instance.wikiaUrl,
};
