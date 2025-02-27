// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reward _$RewardFromJson(Map json) => $checkedCreate('Reward', json, (
  $checkedConvert,
) {
  final val = Reward(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    countedItems: $checkedConvert(
      'countedItems',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) =>
                    CountedItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    credits: $checkedConvert('credits', (v) => (v as num).toInt()),
    asString: $checkedConvert('asString', (v) => v as String),
    itemString: $checkedConvert('itemString', (v) => v as String),
    thumbnail: $checkedConvert('thumbnail', (v) => v as String),
    color: $checkedConvert('color', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
  'items': instance.items,
  'countedItems': instance.countedItems.map((e) => e.toJson()).toList(),
  'credits': instance.credits,
  'asString': instance.asString,
  'itemString': instance.itemString,
  'thumbnail': instance.thumbnail,
  'color': instance.color,
};

CountedItem _$CountedItemFromJson(Map json) =>
    $checkedCreate('CountedItem', json, ($checkedConvert) {
      final val = CountedItem(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        type: $checkedConvert('type', (v) => v as String),
        key: $checkedConvert('key', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CountedItemToJson(CountedItem instance) =>
    <String, dynamic>{
      'count': instance.count,
      'type': instance.type,
      'key': instance.key,
    };
