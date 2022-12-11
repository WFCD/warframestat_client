// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mod _$ModFromJson(Map json) => $checkedCreate(
      'Mod',
      json,
      ($checkedConvert) {
        final val = Mod(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          rarity:
              $checkedConvert('rarity', (v) => $enumDecode(_$RarityEnumMap, v)),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          baseDrain: $checkedConvert('baseDrain', (v) => v as int),
          compatName: $checkedConvert('compatName', (v) => v as String?),
          fusionLimit: $checkedConvert('fusionLimit', (v) => v as int),
          isAugment: $checkedConvert('isAugment', (v) => v as bool?),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          levelStats: $checkedConvert(
              'levelStats',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      LevelStat.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          transmutable: $checkedConvert('transmutable', (v) => v as bool?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ModToJson(Mod instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'patchlogs': instance.patchlogs?.map((e) => e.toJson()).toList(),
      'releaseDate': instance.releaseDate,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'wikiaUrl': instance.wikiaUrl,
      'rarity': _$RarityEnumMap[instance.rarity],
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
      'baseDrain': instance.baseDrain,
      'compatName': instance.compatName,
      'fusionLimit': instance.fusionLimit,
      'isAugment': instance.isAugment,
      'isPrime': instance.isPrime,
      'levelStats': instance.levelStats?.map((e) => e.toJson()).toList(),
      'transmutable': instance.transmutable,
    };

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};
