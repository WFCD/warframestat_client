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
          description: $checkedConvert('description', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int),
          buildQuantity: $checkedConvert('buildQuantity', (v) => v as int),
          buildTime: $checkedConvert('buildTime', (v) => v as int),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>)
                  .map((e) => Component.fromJson(e as Map))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String),
          wikiaThumbnail: $checkedConvert('wikiaThumbnail', (v) => v as String),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String),
          attacks: $checkedConvert(
              'attacks',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      MeleeAttack.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          criticalChance: $checkedConvert('criticalChance', (v) => v as num),
          criticalMultiplier:
              $checkedConvert('criticalMultiplier', (v) => v as num),
          damage: $checkedConvert('damage',
              (v) => Damage.fromJson(Map<String, dynamic>.from(v as Map))),
          damagePerShot: $checkedConvert('damagePerShot',
              (v) => (v as List<dynamic>).map((e) => e as num).toList()),
          disposition: $checkedConvert('disposition', (v) => v as int),
          fireRate: $checkedConvert('fireRate', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => v as int),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          totalDamage: $checkedConvert('totalDamage', (v) => v as num),
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
      'releaseDate': instance.releaseDate,
      'wikiaThumbnail': instance.wikiaThumbnail,
      'wikiaUrl': instance.wikiaUrl,
      'buildPrice': instance.buildPrice,
      'buildQuantity': instance.buildQuantity,
      'buildTime': instance.buildTime,
      'skipBuildTimePrice': instance.skipBuildTimePrice,
      'consumeOnBuild': instance.consumeOnBuild,
      'components': instance.components.map((e) => e.toJson()).toList(),
      'attacks': instance.attacks.map((e) => e.toJson()).toList(),
      'criticalChance': instance.criticalChance,
      'criticalMultiplier': instance.criticalMultiplier,
      'damage': instance.damage.toJson(),
      'damagePerShot': instance.damagePerShot,
      'disposition': instance.disposition,
      'fireRate': instance.fireRate,
      'isPrime': instance.isPrime,
      'omegaAttenuation': instance.omegaAttenuation,
      'polarities': instance.polarities,
      'procChance': instance.procChance,
      'slot': instance.slot,
      'tags': instance.tags,
      'totalDamage': instance.totalDamage,
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
          slide: $checkedConvert('slide', (v) => v as num),
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
    };
