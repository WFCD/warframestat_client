// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'warframe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warframe _$WarframeFromJson(Map json) => $checkedCreate('Warframe', json, (
  $checkedConvert,
) {
  final val = Warframe(
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
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    imageName: $checkedConvert('imageName', (v) => v as String),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
    components: $checkedConvert(
      'components',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Component.fromJson(Map<String, dynamic>.from(e as Map)),
              )
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
      (v) =>
          (v as List<dynamic>)
              .map((e) => Ability.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    aura: $checkedConvert('aura', (v) => v as String?),
    sex: $checkedConvert('sex', (v) => v as String?),
    sprintSpeed: $checkedConvert('sprintSpeed', (v) => v as num),
    passiveDescription: $checkedConvert(
      'passiveDescription',
      (v) => v as String?,
    ),
    color: $checkedConvert('color', (v) => v as num?),
    conclave: $checkedConvert('conclave', (v) => v as bool?),
    introduced: $checkedConvert(
      'introduced',
      (v) =>
          v == null
              ? null
              : Introduced.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    buildPrice: $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
    buildQuantity: $checkedConvert(
      'buildQuantity',
      (v) => (v as num?)?.toInt() ?? 1,
    ),
    buildTime: $checkedConvert('buildTime', (v) => (v as num?)?.toInt() ?? 0),
    skipBuildTimePrice: $checkedConvert(
      'skipBuildTimePrice',
      (v) => (v as num?)?.toInt() ?? 0,
    ),
    consumeOnBuild: $checkedConvert(
      'consumeOnBuild',
      (v) => v as bool? ?? true,
    ),
  );
  return val;
});

Map<String, dynamic> _$WarframeToJson(Warframe instance) => <String, dynamic>{
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
  'isPrime': instance.isPrime,
  if (instance.vaulted case final value?) 'vaulted': value,
  if (instance.masteryReq case final value?) 'masteryReq': value,
  'buildPrice': instance.buildPrice,
  'buildQuantity': instance.buildQuantity,
  'buildTime': instance.buildTime,
  'skipBuildTimePrice': instance.skipBuildTimePrice,
  'consumeOnBuild': instance.consumeOnBuild,
  if (instance.components?.map((e) => e.toJson()).toList() case final value?)
    'components': value,
  if (instance.marketCost case final value?) 'marketCost': value,
  if (instance.bpCost case final value?) 'bpCost': value,
  if (instance.itemCount case final value?) 'itemCount': value,
  'shield': instance.shield,
  'armor': instance.armor,
  'health': instance.health,
  'stamina': instance.stamina,
  'power': instance.power,
  if (instance.polarities case final value?) 'polarities': value,
  'abilities': instance.abilities.map((e) => e.toJson()).toList(),
  if (instance.aura case final value?) 'aura': value,
  if (instance.sex case final value?) 'sex': value,
  'sprintSpeed': instance.sprintSpeed,
  if (instance.passiveDescription case final value?)
    'passiveDescription': value,
  if (instance.color case final value?) 'color': value,
  if (instance.conclave case final value?) 'conclave': value,
  if (instance.introduced?.toJson() case final value?) 'introduced': value,
};
