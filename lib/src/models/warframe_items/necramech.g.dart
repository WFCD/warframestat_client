// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'necramech.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Necramech _$NecramechFromJson(Map json) => $checkedCreate('Necramech', json, (
  $checkedConvert,
) {
  final val = Necramech(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    imageName: $checkedConvert('imageName', (v) => v as String),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
    buildPrice: $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
    buildQuantity: $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
    buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
    skipBuildTimePrice: $checkedConvert(
      'skipBuildTimePrice',
      (v) => (v as num).toInt(),
    ),
    consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
    components: $checkedConvert(
      'components',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Component.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    marketCost: $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
    bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    vaulted: $checkedConvert('vaulted', (v) => v as bool?),
    shield: $checkedConvert('shield', (v) => (v as num).toInt()),
    armor: $checkedConvert('armor', (v) => (v as num).toInt()),
    health: $checkedConvert('health', (v) => (v as num).toInt()),
    stamina: $checkedConvert('stamina', (v) => v as num),
    power: $checkedConvert('power', (v) => (v as num).toInt()),
    polarities: $checkedConvert(
      'polarities',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    abilities: $checkedConvert(
      'abilities',
      (v) => (v as List<dynamic>)
          .map((e) => Ability.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$NecramechToJson(Necramech instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  'description': ?instance.description,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  'productCategory': ?instance.productCategory,
  'tradable': instance.tradable,
  'patchlogs': ?instance.patchlogs?.map((e) => e.toJson()).toList(),
  'imageName': ?instance.imageName,
  'releaseDate': ?instance.releaseDate,
  'wikiaThumbnail': ?instance.wikiaThumbnail,
  'wikiaUrl': ?instance.wikiaUrl,
  'isPrime': instance.isPrime,
  'vaulted': ?instance.vaulted,
  'masteryReq': ?instance.masteryReq,
  'buildPrice': instance.buildPrice,
  'buildQuantity': instance.buildQuantity,
  'buildTime': instance.buildTime,
  'skipBuildTimePrice': instance.skipBuildTimePrice,
  'consumeOnBuild': instance.consumeOnBuild,
  'components': ?instance.components?.map((e) => e.toJson()).toList(),
  'marketCost': ?instance.marketCost,
  'bpCost': ?instance.bpCost,
  'itemCount': ?instance.itemCount,
  'shield': instance.shield,
  'armor': instance.armor,
  'health': instance.health,
  'stamina': instance.stamina,
  'power': instance.power,
  'polarities': ?instance.polarities,
  'abilities': instance.abilities.map((e) => e.toJson()).toList(),
};
