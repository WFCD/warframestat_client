// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Secondary _$SecondaryFromJson(Map json) => $checkedCreate(
      'Secondary',
      json,
      ($checkedConvert) {
        final val = Secondary(
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
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String),
          attacks: $checkedConvert(
              'attacks',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      GunAttack.fromJson(Map<String, dynamic>.from(e as Map)))
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
          disposition: $checkedConvert('disposition', (v) => v as int),
          fireRate: $checkedConvert('fireRate', (v) => v as num),
          isPrime: $checkedConvert('isPrime', (v) => v as bool),
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
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          accuracy: $checkedConvert('accuracy', (v) => v as num?),
          magazineSize: $checkedConvert('magazineSize', (v) => v as int?),
          multiShot: $checkedConvert('multiShot', (v) => v as int?),
          noise: $checkedConvert('noise', (v) => v as String?),
          trigger: $checkedConvert('trigger', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SecondaryToJson(Secondary instance) => <String, dynamic>{
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
      'isPrime': instance.isPrime,
      'omegaAttenuation': instance.omegaAttenuation,
      'polarities': instance.polarities,
      'procChance': instance.procChance,
      'slot': instance.slot,
      'tags': instance.tags,
      'totalDamage': instance.totalDamage,
      'accuracy': instance.accuracy,
      'magazineSize': instance.magazineSize,
      'multiShot': instance.multiShot,
      'noise': instance.noise,
      'trigger': instance.trigger,
    };