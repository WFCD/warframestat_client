// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'secondary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Secondary _$SecondaryFromJson(Map json) => $checkedCreate('Secondary', json, (
  $checkedConvert,
) {
  final val = Secondary(
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
    components: $checkedConvert(
      'components',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Component.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    imageName: $checkedConvert('imageName', (v) => v as String),
    attacks: $checkedConvert(
      'attacks',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => GunAttack.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    criticalChance: $checkedConvert('criticalChance', (v) => v as num),
    criticalMultiplier: $checkedConvert('criticalMultiplier', (v) => v as num),
    damage: $checkedConvert(
      'damage',
      (v) =>
          v == null
              ? null
              : Damage.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    damagePerShot: $checkedConvert(
      'damagePerShot',
      (v) => (v as List<dynamic>).map((e) => e as num).toList(),
    ),
    disposition: $checkedConvert('disposition', (v) => (v as num?)?.toInt()),
    fireRate: $checkedConvert('fireRate', (v) => v as num),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    omegaAttenuation: $checkedConvert(
      'omegaAttenuation',
      (v) => (v as num).toDouble(),
    ),
    polarities: $checkedConvert(
      'polarities',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    procChance: $checkedConvert('procChance', (v) => (v as num).toDouble()),
    slot: $checkedConvert('slot', (v) => (v as num?)?.toInt()),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    totalDamage: $checkedConvert('totalDamage', (v) => v as num),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    accuracy: $checkedConvert('accuracy', (v) => v as num?),
    magazineSize: $checkedConvert('magazineSize', (v) => (v as num?)?.toInt()),
    multishot: $checkedConvert('multishot', (v) => (v as num?)?.toInt()),
    noise: $checkedConvert('noise', (v) => v as String?),
    trigger: $checkedConvert('trigger', (v) => v as String?),
    reloadTime: $checkedConvert('reloadTime', (v) => v as num?),
    maxLevelCap: $checkedConvert(
      'maxLevelCap',
      (v) => (v as num?)?.toInt() ?? 30,
    ),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
    marketCost: $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    buildPrice: $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
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
    vaulted: $checkedConvert('vaulted', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$SecondaryToJson(Secondary instance) => <String, dynamic>{
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
  if (instance.attacks?.map((e) => e.toJson()).toList() case final value?)
    'attacks': value,
  'criticalChance': instance.criticalChance,
  'criticalMultiplier': instance.criticalMultiplier,
  if (instance.damage?.toJson() case final value?) 'damage': value,
  'damagePerShot': instance.damagePerShot,
  if (instance.disposition case final value?) 'disposition': value,
  'fireRate': instance.fireRate,
  'omegaAttenuation': instance.omegaAttenuation,
  if (instance.polarities case final value?) 'polarities': value,
  'procChance': instance.procChance,
  if (instance.slot case final value?) 'slot': value,
  if (instance.tags case final value?) 'tags': value,
  'totalDamage': instance.totalDamage,
  'maxLevelCap': instance.maxLevelCap,
  if (instance.accuracy case final value?) 'accuracy': value,
  if (instance.magazineSize case final value?) 'magazineSize': value,
  if (instance.multishot case final value?) 'multishot': value,
  if (instance.noise case final value?) 'noise': value,
  if (instance.trigger case final value?) 'trigger': value,
  if (instance.reloadTime case final value?) 'reloadTime': value,
};
