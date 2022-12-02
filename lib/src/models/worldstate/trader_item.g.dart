// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TraderItem _$TraderItemFromJson(Map json) => $checkedCreate(
      'TraderItem',
      json,
      ($checkedConvert) {
        final val = TraderItem(
          item: $checkedConvert('item', (v) => v as String),
          ducats: $checkedConvert('ducats', (v) => v as int),
          credits: $checkedConvert('credits', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$TraderItemToJson(TraderItem instance) =>
    <String, dynamic>{
      'item': instance.item,
      'ducats': instance.ducats,
      'credits': instance.credits,
    };
