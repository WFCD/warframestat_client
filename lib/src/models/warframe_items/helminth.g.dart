// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helminth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Helminth _$HelminthFromJson(Map json) => $checkedCreate('Helminth', json, (
  $checkedConvert,
) {
  final val = Helminth(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    imageName: $checkedConvert('imageName', (v) => v as String?),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
    excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
    drops: $checkedConvert(
      'drops',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    abilities: $checkedConvert(
      'abilities',
      (v) =>
          (v as List<dynamic>)
              .map((e) => Ability.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$HelminthToJson(Helminth instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  if (instance.description case final value?) 'description': value,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  if (instance.productCategory case final value?) 'productCategory': value,
  'tradable': instance.tradable,
  if (instance.patchlogs?.map((e) => e.toJson()).toList() case final value?)
    'patchlogs': value,
  if (instance.imageName case final value?) 'imageName': value,
  if (instance.releaseDate case final value?) 'releaseDate': value,
  if (instance.excludeFromCodex case final value?) 'excludeFromCodex': value,
  if (instance.wikiaThumbnail case final value?) 'wikiaThumbnail': value,
  if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
  if (instance.drops?.map((e) => e.toJson()).toList() case final value?)
    'drops': value,
  'abilities': instance.abilities.map((e) => e.toJson()).toList(),
};
