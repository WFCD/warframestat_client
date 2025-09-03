// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map json) =>
    $checkedCreate('News', json, ($checkedConvert) {
      final val = News(
        id: $checkedConvert('id', (v) => v as String?),
        activation: $checkedConvert(
          'activation',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        expiry: $checkedConvert(
          'expiry',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
        message: $checkedConvert('message', (v) => v as String),
        link: $checkedConvert('link', (v) => v as String),
        imageLink: $checkedConvert('imageLink', (v) => v as String),
        translations: $checkedConvert(
          'translations',
          (v) => Map<String, String>.from(v as Map),
        ),
        primeAccess: $checkedConvert('primeAccess', (v) => v as bool),
        stream: $checkedConvert('stream', (v) => v as bool),
        update: $checkedConvert('update', (v) => v as bool),
        priority: $checkedConvert('priority', (v) => v as bool),
        mobileOnly: $checkedConvert('mobileOnly', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
  'id': ?instance.id,
  'activation': ?instance.activation?.toIso8601String(),
  'expiry': ?instance.expiry?.toIso8601String(),
  'message': instance.message,
  'link': instance.link,
  'priority': instance.priority,
  'imageLink': instance.imageLink,
  'date': instance.date.toIso8601String(),
  'primeAccess': instance.primeAccess,
  'stream': instance.stream,
  'update': instance.update,
  'mobileOnly': instance.mobileOnly,
  'translations': instance.translations,
};
