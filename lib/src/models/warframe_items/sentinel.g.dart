// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'sentinel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentinel _$SentinelFromJson(Map json) => $checkedCreate('Sentinel', json, (
  $checkedConvert,
) {
  final val = Sentinel(
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
    imageName: $checkedConvert('imageName', (v) => v as String?),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    armor: $checkedConvert('armor', (v) => (v as num).toInt()),
    health: $checkedConvert('health', (v) => (v as num).toInt()),
    shield: $checkedConvert('shield', (v) => (v as num).toInt()),
    stamina: $checkedConvert('stamina', (v) => v as num),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SentinelToJson(Sentinel instance) => <String, dynamic>{
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
  if (instance.excludeFromCodex case final value?) 'excludeFromCodex': value,
  if (instance.wikiaThumbnail case final value?) 'wikiaThumbnail': value,
  if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
  'armor': instance.armor,
  'health': instance.health,
  'shield': instance.shield,
  'stamina': instance.stamina,
};

SentinelBuildable _$SentinelBuildableFromJson(
  Map json,
) => $checkedCreate('SentinelBuildable', json, ($checkedConvert) {
  final val = SentinelBuildable(
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
    buildPrice: $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
    buildQuantity: $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
    buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
    skipBuildTimePrice: $checkedConvert(
      'skipBuildTimePrice',
      (v) => (v as num).toInt(),
    ),
    consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
    imageName: $checkedConvert('imageName', (v) => v as String),
    components: $checkedConvert(
      'components',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => Component.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    armor: $checkedConvert('armor', (v) => (v as num).toInt()),
    health: $checkedConvert('health', (v) => (v as num).toInt()),
    shield: $checkedConvert('shield', (v) => (v as num).toInt()),
    stamina: $checkedConvert('stamina', (v) => v as num),
    vaulted: $checkedConvert('vaulted', (v) => v as bool?),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    marketCost: $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
    bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SentinelBuildableToJson(
  SentinelBuildable instance,
) => <String, dynamic>{
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
  'armor': instance.armor,
  'health': instance.health,
  'shield': instance.shield,
  'stamina': instance.stamina,
};

SentinelWeapon _$SentinelWeaponFromJson(
  Map json,
) => $checkedCreate('SentinelWeapon', json, ($checkedConvert) {
  final val = SentinelWeapon(
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
    imageName: $checkedConvert('imageName', (v) => v as String?),
    criticalChance: $checkedConvert('criticalChance', (v) => v as num),
    criticalMultiplier: $checkedConvert('criticalMultiplier', (v) => v as num),
    damagePerShot: $checkedConvert(
      'damagePerShot',
      (v) => (v as List<dynamic>).map((e) => e as num).toList(),
    ),
    disposition: $checkedConvert('disposition', (v) => (v as num?)?.toInt()),
    fireRate: $checkedConvert('fireRate', (v) => v as num),
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
    totalDamage: $checkedConvert('totalDamage', (v) => v as num),
    maxLevelCap: $checkedConvert(
      'maxLevelCap',
      (v) => (v as num?)?.toInt() ?? 30,
    ),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
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
    attacks: $checkedConvert(
      'attacks',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => GunAttack.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    damage: $checkedConvert(
      'damage',
      (v) =>
          v == null
              ? null
              : Damage.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SentinelWeaponToJson(
  SentinelWeapon instance,
) => <String, dynamic>{
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
  if (instance.excludeFromCodex case final value?) 'excludeFromCodex': value,
  if (instance.wikiaThumbnail case final value?) 'wikiaThumbnail': value,
  if (instance.wikiaUrl case final value?) 'wikiaUrl': value,
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
};
