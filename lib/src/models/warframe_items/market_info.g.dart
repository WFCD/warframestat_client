// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'market_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketInfo _$MarketInfoFromJson(Map json) =>
    $checkedCreate('MarketInfo', json, ($checkedConvert) {
      final val = MarketInfo(
        id: $checkedConvert('id', (v) => v as String),
        urlName: $checkedConvert('urlName', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$MarketInfoToJson(MarketInfo instance) =>
    <String, dynamic>{'id': instance.id, 'urlName': instance.urlName};
