// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'primary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Primary _$PrimaryFromJson(Map json) => $checkedCreate(
      'Primary',
      json,
      ($checkedConvert) {
        final val = Primary(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
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
          multishot: $checkedConvert('multishot', (v) => v as int?),
          noise: $checkedConvert('noise', (v) => v as String?),
          trigger: $checkedConvert('trigger', (v) => v as String?),
          reloadTime: $checkedConvert('reloadTime', (v) => v as num?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          bpCost: $checkedConvert('bpCost', (v) => v as int?),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int? ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => v as int? ?? 1),
          buildTime: $checkedConvert('buildTime', (v) => v as int? ?? 0),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int? ?? 0),
          consumeOnBuild:
              $checkedConvert('consumeOnBuild', (v) => v as bool? ?? true),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PrimaryToJson(Primary instance) {
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
  val['type'] = instance.type;
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
  writeNotNull('accuracy', instance.accuracy);
  writeNotNull('magazineSize', instance.magazineSize);
  writeNotNull('multishot', instance.multishot);
  writeNotNull('noise', instance.noise);
  writeNotNull('trigger', instance.trigger);
  writeNotNull('reloadTime', instance.reloadTime);
  return val;
}
