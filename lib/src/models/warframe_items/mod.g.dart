// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mod _$ModFromJson(Map json) => $checkedCreate('Mod', json, ($checkedConvert) {
  final val = Mod(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    imageName: $checkedConvert('imageName', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    polarity: $checkedConvert('polarity', (v) => v as String?),
    rarity: $checkedConvert(
      'rarity',
      (v) => $enumDecodeNullable(_$RarityEnumMap, v),
    ),
    drops: $checkedConvert(
      'drops',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    baseDrain: $checkedConvert('baseDrain', (v) => (v as num?)?.toInt()),
    fusionLimit: $checkedConvert('fusionLimit', (v) => (v as num?)?.toInt()),
    isAugment: $checkedConvert('isAugment', (v) => v as bool?),
    levelStats: $checkedConvert(
      'levelStats',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => LevelStat.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    transmutable: $checkedConvert('transmutable', (v) => v as bool?),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    modSet: $checkedConvert('modSet', (v) => v as String?),
    compatName: $checkedConvert('compatName', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ModToJson(Mod instance) => <String, dynamic>{
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
  if (instance.releaseDate case final value?) 'releaseDate': value,
  if (instance.wikiaThumbnail case final value?) 'wikiaThumbnail': value,
  if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
  if (_$RarityEnumMap[instance.rarity] case final value?) 'rarity': value,
  if (instance.drops?.map((e) => e.toJson()).toList() case final value?)
    'drops': value,
  'isPrime': instance.isPrime,
  if (instance.polarity case final value?) 'polarity': value,
  if (instance.baseDrain case final value?) 'baseDrain': value,
  if (instance.compatName case final value?) 'compatName': value,
  if (instance.fusionLimit case final value?) 'fusionLimit': value,
  if (instance.isAugment case final value?) 'isAugment': value,
  if (instance.levelStats?.map((e) => e.toJson()).toList() case final value?)
    'levelStats': value,
  if (instance.transmutable case final value?) 'transmutable': value,
  if (instance.modSet case final value?) 'modSet': value,
};

const _$RarityEnumMap = {
  Rarity.common: 'Common',
  Rarity.uncommon: 'Uncommon',
  Rarity.rare: 'Rare',
  Rarity.legendary: 'Legendary',
};

ModSet _$ModSetFromJson(Map json) => $checkedCreate('ModSet', json, (
  $checkedConvert,
) {
  final val = ModSet(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    imageName: $checkedConvert('imageName', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    rarity: $checkedConvert(
      'rarity',
      (v) => $enumDecodeNullable(_$RarityEnumMap, v),
    ),
    drops: $checkedConvert(
      'drops',
      (v) =>
          (v as List<dynamic>?)
              ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    numUpgradesInSet: $checkedConvert(
      'numUpgradesInSet',
      (v) => (v as num).toInt(),
    ),
    stats: $checkedConvert(
      'stats',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ModSetToJson(ModSet instance) => <String, dynamic>{
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
  if (instance.releaseDate case final value?) 'releaseDate': value,
  if (_$RarityEnumMap[instance.rarity] case final value?) 'rarity': value,
  if (instance.drops?.map((e) => e.toJson()).toList() case final value?)
    'drops': value,
  'isPrime': instance.isPrime,
  'numUpgradesInSet': instance.numUpgradesInSet,
  'stats': instance.stats,
};
