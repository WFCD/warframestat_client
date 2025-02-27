// GENERATED CODE - DO NOT MODIFY BY HAND

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
