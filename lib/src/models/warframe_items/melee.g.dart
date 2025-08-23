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
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    damage: $checkedConvert(
      'damage',
      (v) => v == null
          ? null
          : Damage.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    stancePolarity: $checkedConvert('stancePolarity', (v) => v as String?),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
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
  'description': ?instance.description,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  'productCategory': ?instance.productCategory,
  'tradable': instance.tradable,
  'patchlogs': ?instance.patchlogs?.map((e) => e.toJson()).toList(),
  'imageName': ?instance.imageName,
  'releaseDate': ?instance.releaseDate,
  'excludeFromCodex': ?instance.excludeFromCodex,
  'wikiaThumbnail': ?instance.wikiaThumbnail,
  'wikiaUrl': ?instance.wikiaUrl,
  'attacks': ?instance.attacks?.map((e) => e.toJson()).toList(),
  'criticalChance': instance.criticalChance,
  'criticalMultiplier': instance.criticalMultiplier,
  'damage': ?instance.damage?.toJson(),
  'damagePerShot': instance.damagePerShot,
  'disposition': ?instance.disposition,
  'fireRate': instance.fireRate,
  'omegaAttenuation': instance.omegaAttenuation,
  'polarities': ?instance.polarities,
  'procChance': instance.procChance,
  'slot': ?instance.slot,
  'tags': ?instance.tags,
  'totalDamage': instance.totalDamage,
  'maxLevelCap': instance.maxLevelCap,
  'followThrough': ?instance.followThrough,
  'stancePolarity': ?instance.stancePolarity,
  'heavyAttackDamage': ?instance.heavyAttackDamage,
  'heavySlamAttack': ?instance.heavySlamAttack,
  'heavySlamRadialDamage': ?instance.heavySlamRadialDamage,
  'heavySlamRadius': ?instance.heavySlamRadius,
  'slamAttack': ?instance.slamAttack,
  'slamRadialDamage': ?instance.slamRadialDamage,
  'slamRadius': ?instance.slamRadius,
  'slideAttack': ?instance.slideAttack,
  'windUp': ?instance.windUp,
  'range': ?instance.range,
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
      (v) => (v as List<dynamic>?)
          ?.map((e) => Component.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    imageName: $checkedConvert('imageName', (v) => v as String),
    attacks: $checkedConvert(
      'attacks',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    criticalChance: $checkedConvert('criticalChance', (v) => v as num),
    criticalMultiplier: $checkedConvert('criticalMultiplier', (v) => v as num),
    damage: $checkedConvert(
      'damage',
      (v) => v == null
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
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
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

Map<String, dynamic> _$MeleeBuildableToJson(MeleeBuildable instance) =>
    <String, dynamic>{
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
      'attacks': ?instance.attacks?.map((e) => e.toJson()).toList(),
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'damage': ?instance.damage?.toJson(),
      'damagePerShot': instance.damagePerShot,
      'disposition': ?instance.disposition,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'polarities': ?instance.polarities,
      'procChance': instance.procChance,
      'slot': ?instance.slot,
      'tags': ?instance.tags,
      'totalDamage': instance.totalDamage,
      'maxLevelCap': instance.maxLevelCap,
      'followThrough': ?instance.followThrough,
      'stancePolarity': ?instance.stancePolarity,
      'heavyAttackDamage': ?instance.heavyAttackDamage,
      'heavySlamAttack': ?instance.heavySlamAttack,
      'heavySlamRadialDamage': ?instance.heavySlamRadialDamage,
      'heavySlamRadius': ?instance.heavySlamRadius,
      'slamAttack': ?instance.slamAttack,
      'slamRadialDamage': ?instance.slamRadialDamage,
      'slamRadius': ?instance.slamRadius,
      'slideAttack': ?instance.slideAttack,
      'windUp': ?instance.windUp,
      'range': ?instance.range,
    };

MeleeAttack _$MeleeAttackFromJson(Map json) => $checkedCreate(
  'MeleeAttack',
  json,
  ($checkedConvert) {
    final val = MeleeAttack(
      name: $checkedConvert('name', (v) => v as String),
      speed: $checkedConvert('speed', (v) => v as num?),
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
        (v) => v == null
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
      'speed': ?instance.speed,
      'crit_chance': instance.critChance,
      'crit_mult': instance.critMult,
      'status_chance': instance.statusChance,
      'damage': instance.damage.toJson(),
      'slide': ?instance.slide,
      'slam': ?instance.slam?.toJson(),
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
  'element': ?instance.element,
  'radius': ?instance.radius,
};
