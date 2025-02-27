// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderItem _$TraderItemFromJson(Map json) =>
    $checkedCreate('TraderItem', json, ($checkedConvert) {
      final val = TraderItem(
        uniqueName: $checkedConvert('uniqueName', (v) => v as String),
        item: $checkedConvert('item', (v) => v as String),
        ducats: $checkedConvert('ducats', (v) => (v as num?)?.toInt()),
        credits: $checkedConvert('credits', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$TraderItemToJson(TraderItem instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'item': instance.item,
      if (instance.ducats case final value?) 'ducats': value,
      if (instance.credits case final value?) 'credits': value,
    };
