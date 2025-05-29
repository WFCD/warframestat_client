// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'introduced.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Introduced _$IntroducedFromJson(Map json) =>
    $checkedCreate('Introduced', json, ($checkedConvert) {
      final val = Introduced(
        name: $checkedConvert('name', (v) => v as String),
        url: $checkedConvert('url', (v) => v as String),
        aliases: $checkedConvert(
          'aliases',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        parent: $checkedConvert('parent', (v) => v as String),
        date: $checkedConvert('date', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$IntroducedToJson(Introduced instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'aliases': instance.aliases,
      'parent': instance.parent,
      'date': instance.date,
    };
