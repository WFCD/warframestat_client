// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'trader_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderItem _$TraderItemFromJson(Map json) =>
    $checkedCreate('TraderItem', json, ($checkedConvert) {
      final val = TraderItem(
        uniqueName: $checkedConvert('uniqueName', (v) => v as String?),
        item: $checkedConvert('item', (v) => v as String),
        ducats: $checkedConvert('ducats', (v) => (v as num?)?.toInt()),
        credits: $checkedConvert('credits', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$TraderItemToJson(TraderItem instance) =>
    <String, dynamic>{
      'uniqueName': ?instance.uniqueName,
      'item': instance.item,
      'ducats': ?instance.ducats,
      'credits': ?instance.credits,
    };
