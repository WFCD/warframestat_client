// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'skin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArsenalSkin _$ArsenalSkinFromJson(Map json) =>
    $checkedCreate('ArsenalSkin', json, ($checkedConvert) {
      final val = ArsenalSkin(
        uniqueName: $checkedConvert('uniqueName', (v) => v as String),
        item: $checkedConvert(
          'item',
          (v) => _$JsonConverterFromJson<Map<String, dynamic>, Item>(
            v,
            const ItemConverter().fromJson,
          ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ArsenalSkinToJson(ArsenalSkin instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'item': ?_$JsonConverterToJson<Map<String, dynamic>, Item>(
        instance.item,
        const ItemConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
