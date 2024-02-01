// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'melee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Melee _$MeleeFromJson(Map json) => $checkedCreate(
      'Melee',
      json,
      ($checkedConvert) {
        final val = Melee(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          bpCost: $checkedConvert('bpCost', (v) => v as int?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String),
          attacks: $checkedConvert(
              'attacks',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          criticalChance: $checkedConvert('criticalChance', (v) => v as num),
          criticalMultiplier:
              $checkedConvert('criticalMultiplier', (v) => v as num),
          damage: $checkedConvert(
              'damage',
              (v) => v == null
                  ? null
                  : Damage.fromJson(Map<String, dynamic>.from(v as Map))),
          damagePerShot: $checkedConvert('damagePerShot',
              (v) => (v as List<dynamic>).map((e) => e as num).toList()),
          fireRate: $checkedConvert('fireRate', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => v as int),
          totalDamage: $checkedConvert('totalDamage', (v) => v as num),
          followThrough:
              $checkedConvert('followThrough', (v) => (v as num?)?.toDouble()),
          heavyAttackDamage:
              $checkedConvert('heavyAttackDamage', (v) => v as int?),
          heavySlamAttack: $checkedConvert('heavySlamAttack', (v) => v as int?),
          heavySlamRadialDamage:
              $checkedConvert('heavySlamRadialDamage', (v) => v as int?),
          heavySlamRadius: $checkedConvert('heavySlamRadius', (v) => v as int?),
          slamAttack: $checkedConvert('slamAttack', (v) => v as int?),
          slamRadialDamage:
              $checkedConvert('slamRadialDamage', (v) => v as int?),
          slamRadius: $checkedConvert('slamRadius', (v) => v as int?),
          slideAttack: $checkedConvert('slideAttack', (v) => v as int?),
          windUp: $checkedConvert('windUp', (v) => (v as num?)?.toDouble()),
          range: $checkedConvert('range', (v) => (v as num?)?.toDouble()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int? ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => v as int? ?? 1),
          buildTime: $checkedConvert('buildTime', (v) => v as int? ?? 0),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int? ?? 0),
          consumeOnBuild:
              $checkedConvert('consumeOnBuild', (v) => v as bool? ?? true),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int?),
          stancePolarity:
              $checkedConvert('stancePolarity', (v) => v as String?),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          disposition: $checkedConvert('disposition', (v) => v as int? ?? 0),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$MeleeToJson(Melee instance) {
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
  val['type'] = const ItemTypeConverter().toJson(instance.type);
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  writeNotNull('releaseDate', instance.releaseDate);
  writeNotNull('wikiaThumbnail', instance.wikiaThumbnail);
  writeNotNull('wikiaUrl', instance.wikiaUrl);
  val['isPrime'] = instance.isPrime;
  writeNotNull('vaulted', instance.vaulted);
  writeNotNull('masteryReq', instance.masteryReq);
  val['buildPrice'] = instance.buildPrice;
  val['buildQuantity'] = instance.buildQuantity;
  val['buildTime'] = instance.buildTime;
  val['skipBuildTimePrice'] = instance.skipBuildTimePrice;
  val['consumeOnBuild'] = instance.consumeOnBuild;
  writeNotNull(
      'components', instance.components?.map((e) => e.toJson()).toList());
  writeNotNull('bpCost', instance.bpCost);
  writeNotNull('attacks', instance.attacks?.map((e) => e.toJson()).toList());
  val['criticalChance'] = instance.criticalChance;
  val['criticalMultiplier'] = instance.criticalMultiplier;
  writeNotNull('damage', instance.damage?.toJson());
  val['damagePerShot'] = instance.damagePerShot;
  val['disposition'] = instance.disposition;
  val['fireRate'] = instance.fireRate;
  val['omegaAttenuation'] = instance.omegaAttenuation;
  writeNotNull('polarities', instance.polarities);
  val['procChance'] = instance.procChance;
  val['slot'] = instance.slot;
  writeNotNull('tags', instance.tags);
  val['totalDamage'] = instance.totalDamage;
  writeNotNull('followThrough', instance.followThrough);
  writeNotNull('stancePolarity', instance.stancePolarity);
  writeNotNull('heavyAttackDamage', instance.heavyAttackDamage);
  writeNotNull('heavySlamAttack', instance.heavySlamAttack);
  writeNotNull('heavySlamRadialDamage', instance.heavySlamRadialDamage);
  writeNotNull('heavySlamRadius', instance.heavySlamRadius);
  writeNotNull('slamAttack', instance.slamAttack);
  writeNotNull('slamRadialDamage', instance.slamRadialDamage);
  writeNotNull('slamRadius', instance.slamRadius);
  writeNotNull('slideAttack', instance.slideAttack);
  writeNotNull('windUp', instance.windUp);
  writeNotNull('range', instance.range);
  return val;
}

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
          damage: $checkedConvert('damage',
              (v) => Damage.fromJson(Map<String, dynamic>.from(v as Map))),
          slide: $checkedConvert('slide', (v) => v as String?),
          slam: $checkedConvert(
              'slam',
              (v) => v == null
                  ? null
                  : Slam.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
      fieldKeyMap: const {
        'critChance': 'crit_chance',
        'critMult': 'crit_mult',
        'statusChance': 'status_chance'
      },
    );

Map<String, dynamic> _$MeleeAttackToJson(MeleeAttack instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'speed': instance.speed,
    'crit_chance': instance.critChance,
    'crit_mult': instance.critMult,
    'status_chance': instance.statusChance,
    'damage': instance.damage.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slide', instance.slide);
  writeNotNull('slam', instance.slam?.toJson());
  return val;
}

Slam _$SlamFromJson(Map json) => $checkedCreate(
      'Slam',
      json,
      ($checkedConvert) {
        final val = Slam(
          damage: $checkedConvert('damage', (v) => v as String),
          radial: $checkedConvert('radial',
              (v) => Radial.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$SlamToJson(Slam instance) => <String, dynamic>{
      'damage': instance.damage,
      'radial': instance.radial.toJson(),
    };

Radial _$RadialFromJson(Map json) => $checkedCreate(
      'Radial',
      json,
      ($checkedConvert) {
        final val = Radial(
          damage: $checkedConvert('damage', (v) => v as String),
          radius: $checkedConvert('radius', (v) => v as num),
          element: $checkedConvert('element', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$RadialToJson(Radial instance) {
  final val = <String, dynamic>{
    'damage': instance.damage,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('element', instance.element);
  val['radius'] = instance.radius;
  return val;
}
