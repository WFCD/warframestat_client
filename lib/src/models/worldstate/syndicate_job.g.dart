// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'syndicate_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateJob _$SyndicateJobFromJson(Map json) =>
    $checkedCreate('SyndicateJob', json, ($checkedConvert) {
      final val = SyndicateJob(
        id: $checkedConvert('id', (v) => v as String),
        rewardPool: $checkedConvert(
          'rewardPool',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        rewardPoolDrops: $checkedConvert(
          'rewardPoolDrops',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => RewardDrop.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
        ),
        type: $checkedConvert('type', (v) => v as String?),
        enemyLevels: $checkedConvert(
          'enemyLevels',
          (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
        standingStages: $checkedConvert(
          'standingStages',
          (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
        minMr: $checkedConvert('minMr', (v) => (v as num?)?.toInt()),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$SyndicateJobToJson(
  SyndicateJob instance,
) => <String, dynamic>{
  'id': instance.id,
  'rewardPool': instance.rewardPool,
  'rewardPoolDrops': ?instance.rewardPoolDrops?.map((e) => e.toJson()).toList(),
  'type': ?instance.type,
  'enemyLevels': instance.enemyLevels,
  'standingStages': instance.standingStages,
  'minMr': ?instance.minMr,
  'expiry': instance.expiry.toIso8601String(),
};

RewardDrop _$RewardDropFromJson(Map json) => $checkedCreate(
  'RewardDrop',
  json,
  ($checkedConvert) {
    final val = RewardDrop(
      item: $checkedConvert('item', (v) => v as String),
      rarity: $checkedConvert('rarity', (v) => $enumDecode(_$RarityEnumMap, v)),
      chance: $checkedConvert('chance', (v) => v as num),
      count: $checkedConvert('count', (v) => (v as num?)?.toInt() ?? 1),
    );
    return val;
  },
);

Map<String, dynamic> _$RewardDropToJson(RewardDrop instance) =>
    <String, dynamic>{
      'item': instance.item,
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'chance': instance.chance,
      'count': instance.count,
    };

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};
