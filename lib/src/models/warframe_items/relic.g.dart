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
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
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
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$RelicToJson(Relic instance) {
  final val = <String, dynamic>{
    'uniqueName': instance.uniqueName,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['type'] = instance.type;
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  val['locations'] = instance.locations.map((e) => e.toJson()).toList();
  writeNotNull('marketInfo', instance.marketInfo?.toJson());
  writeNotNull('vaulted', instance.vaulted);
  return val;
}

Location _$LocationFromJson(Map json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          location: $checkedConvert('location', (v) => v as String),
          rarity:
              $checkedConvert('rarity', (v) => $enumDecode(_$RarityEnumMap, v)),
          chance: $checkedConvert('chance', (v) => v as num),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$RelicRewardToJson(RelicReward instance) =>
    <String, dynamic>{
      'rarity': _$RarityEnumMap[instance.rarity]!,
      'chance': instance.chance,
    };

RewardItem _$RewardItemFromJson(Map json) => $checkedCreate(
      'RewardItem',
      json,
      ($checkedConvert) {
        final val = RewardItem(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          warframeMarket: $checkedConvert('warframeMarket',
              (v) => MarketInfo.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$RewardItemToJson(RewardItem instance) =>
    <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'warframeMarket': instance.warframeMarket.toJson(),
    };
