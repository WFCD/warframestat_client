// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Component _$ComponentFromJson(Map json) =>
    $checkedCreate('Component', json, ($checkedConvert) {
      final val = Component(
        uniqueName: $checkedConvert('uniqueName', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String?),
        tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
        drops: $checkedConvert(
          'drops',
          (v) => (v as List<dynamic>?)
              ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
        ),
        itemCount: $checkedConvert('itemCount', (v) => (v as num).toInt()),
        imageName: $checkedConvert('imageName', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ComponentToJson(Component instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  'description': ?instance.description,
  'tradable': instance.tradable,
  'imageName': ?instance.imageName,
  'drops': ?instance.drops?.map((e) => e.toJson()).toList(),
  'itemCount': instance.itemCount,
};
