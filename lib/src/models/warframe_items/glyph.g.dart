// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glyph.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Glyph _$GlyphFromJson(Map json) => $checkedCreate(
      'Glyph',
      json,
      ($checkedConvert) {
        final val = Glyph(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$GlyphToJson(Glyph instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
    };