// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relic _$RelicFromJson(Map json) => $checkedCreate(
      'Relic',
      json,
      ($checkedConvert) {
        final val = Relic(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          locations: $checkedConvert(
              'locations',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Location.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          marketInfo: $checkedConvert(
              'marketInfo',
              (v) => v == null
                  ? null
                  : MarketInfo.fromJson(Map<String, dynamic>.from(v as Map))),
          rewards: $checkedConvert(
              'rewards',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      RelicReward.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RelicToJson(Relic instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
      'type': const ItemTypeConverter().toJson(instance.type),
      'category': instance.category,
      if (instance.productCategory case final value?) 'productCategory': value,
      'tradable': instance.tradable,
      if (instance.patchlogs?.map((e) => e.toJson()).toList() case final value?)
        'patchlogs': value,
      if (instance.imageName case final value?) 'imageName': value,
      if (instance.drops?.map((e) => e.toJson()).toList() case final value?)
        'drops': value,
      'locations': instance.locations.map((e) => e.toJson()).toList(),
      if (instance.marketInfo?.toJson() case final value?) 'marketInfo': value,
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
      if (instance.vaulted case final value?) 'vaulted': value,
    };

Location _$LocationFromJson(Map json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          location: $checkedConvert('location', (v) => v as String),
          rarity:
              $checkedConvert('rarity', (v) => $enumDecode(_$RarityEnumMap, v)),
          chance: $checkedConvert('chance', (v) => (v as num).toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'location': instance.location,
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'chance': instance.chance,
    };

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};

RelicReward _$RelicRewardFromJson(Map json) => $checkedCreate(
      'RelicReward',
      json,
      ($checkedConvert) {
        final val = RelicReward(
          rarity:
              $checkedConvert('rarity', (v) => $enumDecode(_$RarityEnumMap, v)),
          chance: $checkedConvert('chance', (v) => v as num),
          item: $checkedConvert('item',
              (v) => RewardItem.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$RelicRewardToJson(RelicReward instance) =>
    <String, dynamic>{
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'chance': instance.chance,
      'item': instance.item.toJson(),
    };

RewardItem _$RewardItemFromJson(Map json) => $checkedCreate(
      'RewardItem',
      json,
      ($checkedConvert) {
        final val = RewardItem(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          warframeMarket: $checkedConvert(
              'warframeMarket',
              (v) => v == null
                  ? null
                  : MarketInfo.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$RewardItemToJson(RewardItem instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      if (instance.warframeMarket?.toJson() case final value?)
        'warframeMarket': value,
    };
