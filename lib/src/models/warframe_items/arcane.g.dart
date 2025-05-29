// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'arcane.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Arcane _$ArcaneFromJson(Map json) => $checkedCreate('Arcane', json, (
  $checkedConvert,
) {
  final val = Arcane(
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
    imageName: $checkedConvert('imageName', (v) => v as String?),
    drops: $checkedConvert(
      'drops',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    levelStats: $checkedConvert(
      'levelStats',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => LevelStat.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ArcaneToJson(Arcane instance) => <String, dynamic>{
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
  if (instance.drops?.map((e) => e.toJson()).toList() case final value?)
    'drops': value,
  if (instance.levelStats?.map((e) => e.toJson()).toList() case final value?)
    'levelStats': value,
};
