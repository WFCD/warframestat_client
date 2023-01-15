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
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          bpCost: $checkedConvert('bpCost', (v) => v as int?),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int? ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => v as int? ?? 1),
          buildTime: $checkedConvert('buildTime', (v) => v as int? ?? 0),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int? ?? 0),
          consumeOnBuild:
              $checkedConvert('consumeOnBuild', (v) => v as bool? ?? true),
          masterReq: $checkedConvert('masterReq', (v) => v as int?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
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
          disposition: $checkedConvert('disposition', (v) => v as int? ?? 0),
          fireRate: $checkedConvert('fireRate', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => v as int),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          totalDamage: $checkedConvert('totalDamage', (v) => v as num),
          followThrough:
              $checkedConvert('followThrough', (v) => (v as num?)?.toDouble()),
          stancePolarity:
              $checkedConvert('stancePolarity', (v) => v as String?),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$MeleeToJson(Melee instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'imageName': instance.imageName,
      'releaseDate': instance.releaseDate,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'wikiaUrl': instance.wikiaUrl,
      'isPrime': instance.isPrime,
      'vaulted': instance.vaulted,
      'masterReq': instance.masterReq,
      'buildPrice': instance.buildPrice,
      'buildQuantity': instance.buildQuantity,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'bpCost': instance.bpCost,
      'attacks': instance.attacks?.map((e) => e.toJson()).toList(),
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'damage': instance.damage?.toJson(),
      'damagePerShot': instance.damagePerShot,
      'disposition': instance.disposition,
      'fireRate': instance.fireRate,
      'omegaAttenuation': instance.omegaAttenuation,
      'polarities': instance.polarities,
      'procChance': instance.procChance,
      'slot': instance.slot,
      'tags': instance.tags,
      'totalDamage': instance.totalDamage,
      'followThrough': instance.followThrough,
      'stancePolarity': instance.stancePolarity,
      'heavyAttackDamage': instance.heavyAttackDamage,
      'heavySlamAttack': instance.heavySlamAttack,
      'heavySlamRadialDamage': instance.heavySlamRadialDamage,
      'heavySlamRadius': instance.heavySlamRadius,
      'slamAttack': instance.slamAttack,
      'slamRadialDamage': instance.slamRadialDamage,
      'slamRadius': instance.slamRadius,
      'slideAttack': instance.slideAttack,
      'windUp': instance.windUp,
      'range': instance.range,
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

Map<String, dynamic> _$MeleeAttackToJson(MeleeAttack instance) =>
    <String, dynamic>{
      'name': instance.name,
      'speed': instance.speed,
      'crit_chance': instance.critChance,
      'crit_mult': instance.critMult,
      'status_chance': instance.statusChance,
      'damage': instance.damage.toJson(),
      'slide': instance.slide,
      'slam': instance.slam?.toJson(),
    };

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
          element: $checkedConvert('element', (v) => v as String?),
          radius: $checkedConvert('radius', (v) => v as num),
        );
        return val;
      },
    );

Map<String, dynamic> _$RadialToJson(Radial instance) => <String, dynamic>{
      'damage': instance.damage,
      'element': instance.element,
      'radius': instance.radius,
    };
