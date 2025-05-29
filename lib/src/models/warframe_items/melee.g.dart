// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'melee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Melee _$MeleeFromJson(Map json) => $checkedCreate('Melee', json, (
  $checkedConvert,
) {
  final val = Melee(
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
    excludeFromCodex: $checkedConvert('excludeFromCodex', (v) => v as bool?),
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
    followThrough: $checkedConvert(
      'followThrough',
      (v) => (v as num?)?.toDouble(),
    ),
    heavyAttackDamage: $checkedConvert(
      'heavyAttackDamage',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamAttack: $checkedConvert(
      'heavySlamAttack',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamRadialDamage: $checkedConvert(
      'heavySlamRadialDamage',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamRadius: $checkedConvert(
      'heavySlamRadius',
      (v) => (v as num?)?.toInt(),
    ),
    slamAttack: $checkedConvert('slamAttack', (v) => (v as num?)?.toInt()),
    slamRadialDamage: $checkedConvert(
      'slamRadialDamage',
      (v) => (v as num?)?.toInt(),
    ),
    slamRadius: $checkedConvert('slamRadius', (v) => (v as num?)?.toInt()),
    slideAttack: $checkedConvert('slideAttack', (v) => (v as num?)?.toInt()),
    windUp: $checkedConvert('windUp', (v) => (v as num?)?.toDouble()),
    range: $checkedConvert('range', (v) => (v as num?)?.toDouble()),
    attacks: $checkedConvert(
      'attacks',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)),
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
    stancePolarity: $checkedConvert('stancePolarity', (v) => v as String?),
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
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MeleeToJson(Melee instance) => <String, dynamic>{
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
  if (instance.followThrough case final value?) 'followThrough': value,
  if (instance.stancePolarity case final value?) 'stancePolarity': value,
  if (instance.heavyAttackDamage case final value?) 'heavyAttackDamage': value,
  if (instance.heavySlamAttack case final value?) 'heavySlamAttack': value,
  if (instance.heavySlamRadialDamage case final value?)
    'heavySlamRadialDamage': value,
  if (instance.heavySlamRadius case final value?) 'heavySlamRadius': value,
  if (instance.slamAttack case final value?) 'slamAttack': value,
  if (instance.slamRadialDamage case final value?) 'slamRadialDamage': value,
  if (instance.slamRadius case final value?) 'slamRadius': value,
  if (instance.slideAttack case final value?) 'slideAttack': value,
  if (instance.windUp case final value?) 'windUp': value,
  if (instance.range case final value?) 'range': value,
};

MeleeBuildable _$MeleeBuildableFromJson(
  Map json,
) => $checkedCreate('MeleeBuildable', json, ($checkedConvert) {
  final val = MeleeBuildable(
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
    bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
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
                (e) =>
                    MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)),
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
    fireRate: $checkedConvert('fireRate', (v) => v as num),
    isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
    omegaAttenuation: $checkedConvert(
      'omegaAttenuation',
      (v) => (v as num).toDouble(),
    ),
    procChance: $checkedConvert('procChance', (v) => (v as num).toDouble()),
    slot: $checkedConvert('slot', (v) => (v as num?)?.toInt()),
    totalDamage: $checkedConvert('totalDamage', (v) => v as num),
    maxLevelCap: $checkedConvert(
      'maxLevelCap',
      (v) => (v as num?)?.toInt() ?? 30,
    ),
    followThrough: $checkedConvert(
      'followThrough',
      (v) => (v as num?)?.toDouble(),
    ),
    heavyAttackDamage: $checkedConvert(
      'heavyAttackDamage',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamAttack: $checkedConvert(
      'heavySlamAttack',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamRadialDamage: $checkedConvert(
      'heavySlamRadialDamage',
      (v) => (v as num?)?.toInt(),
    ),
    heavySlamRadius: $checkedConvert(
      'heavySlamRadius',
      (v) => (v as num?)?.toInt(),
    ),
    slamAttack: $checkedConvert('slamAttack', (v) => (v as num?)?.toInt()),
    slamRadialDamage: $checkedConvert(
      'slamRadialDamage',
      (v) => (v as num?)?.toInt(),
    ),
    slamRadius: $checkedConvert('slamRadius', (v) => (v as num?)?.toInt()),
    slideAttack: $checkedConvert('slideAttack', (v) => (v as num?)?.toInt()),
    windUp: $checkedConvert('windUp', (v) => (v as num?)?.toDouble()),
    range: $checkedConvert('range', (v) => (v as num?)?.toDouble()),
    marketCost: $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    buildPrice: $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
    buildQuantity: $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
    buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
    skipBuildTimePrice: $checkedConvert(
      'skipBuildTimePrice',
      (v) => (v as num).toInt(),
    ),
    consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
    masteryReq: $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
    stancePolarity: $checkedConvert('stancePolarity', (v) => v as String?),
    tags: $checkedConvert(
      'tags',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    polarities: $checkedConvert(
      'polarities',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    vaulted: $checkedConvert('vaulted', (v) => v as bool?),
    disposition: $checkedConvert('disposition', (v) => (v as num?)?.toInt()),
    releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
    wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String?),
    wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$MeleeBuildableToJson(
  MeleeBuildable instance,
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
  if (instance.followThrough case final value?) 'followThrough': value,
  if (instance.stancePolarity case final value?) 'stancePolarity': value,
  if (instance.heavyAttackDamage case final value?) 'heavyAttackDamage': value,
  if (instance.heavySlamAttack case final value?) 'heavySlamAttack': value,
  if (instance.heavySlamRadialDamage case final value?)
    'heavySlamRadialDamage': value,
  if (instance.heavySlamRadius case final value?) 'heavySlamRadius': value,
  if (instance.slamAttack case final value?) 'slamAttack': value,
  if (instance.slamRadialDamage case final value?) 'slamRadialDamage': value,
  if (instance.slamRadius case final value?) 'slamRadius': value,
  if (instance.slideAttack case final value?) 'slideAttack': value,
  if (instance.windUp case final value?) 'windUp': value,
  if (instance.range case final value?) 'range': value,
};

MeleeAttack _$MeleeAttackFromJson(Map json) => $checkedCreate(
  'MeleeAttack',
  json,
  ($checkedConvert) {
    final val = MeleeAttack(
      name: $checkedConvert('name', (v) => v as String),
      speed: $checkedConvert('speed', (v) => v as num),
      critChance: $checkedConvert('crit_chance', (v) => v as num),
      critMult: $checkedConvert('crit_mult', (v) => v as num),
      statusChance: $checkedConvert('status_chance', (v) => v as num),
      damage: $checkedConvert(
        'damage',
        (v) => Damage.fromJson(Map<String, dynamic>.from(v as Map)),
      ),
      slide: $checkedConvert('slide', (v) => v as String?),
      slam: $checkedConvert(
        'slam',
        (v) =>
            v == null
                ? null
                : Slam.fromJson(Map<String, dynamic>.from(v as Map)),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'critChance': 'crit_chance',
    'critMult': 'crit_mult',
    'statusChance': 'status_chance',
  },
);

Map<String, dynamic> _$MeleeAttackToJson(MeleeAttack instance) =>
    <String, dynamic>{
      'name': instance.name,
      'speed': instance.speed,
      'crit_chance': instance.critChance,
      'crit_mult': instance.critMult,
      'status_chance': instance.statusChance,
      'damage': instance.damage.toJson(),
      if (instance.slide case final value?) 'slide': value,
      if (instance.slam?.toJson() case final value?) 'slam': value,
    };

Slam _$SlamFromJson(Map json) =>
    $checkedCreate('Slam', json, ($checkedConvert) {
      final val = Slam(
        damage: $checkedConvert('damage', (v) => v as String),
        radial: $checkedConvert(
          'radial',
          (v) => Radial.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SlamToJson(Slam instance) => <String, dynamic>{
  'damage': instance.damage,
  'radial': instance.radial.toJson(),
};

Radial _$RadialFromJson(Map json) =>
    $checkedCreate('Radial', json, ($checkedConvert) {
      final val = Radial(
        damage: $checkedConvert('damage', (v) => v as String),
        radius: $checkedConvert('radius', (v) => v as num?),
        element: $checkedConvert('element', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$RadialToJson(Radial instance) => <String, dynamic>{
  'damage': instance.damage,
  if (instance.element case final value?) 'element': value,
  if (instance.radius case final value?) 'radius': value,
};
