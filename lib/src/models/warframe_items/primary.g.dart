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
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          imageName: $checkedConvert('imageName', (v) => v as String?),
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
          disposition:
              $checkedConvert('disposition', (v) => (v as num?)?.toInt()),
          fireRate: $checkedConvert('fireRate', (v) => v as num),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => (v as num?)?.toInt()),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          totalDamage: $checkedConvert('totalDamage', (v) => v as num),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          reloadTime: $checkedConvert('reloadTime', (v) => v as num?),
          maxLevelCap:
              $checkedConvert('maxLevelCap', (v) => (v as num?)?.toInt() ?? 30),
          excludeFromCodex:
              $checkedConvert('excludeFromCodex', (v) => v as bool?),
          attacks: $checkedConvert(
              'attacks',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GunAttack.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          accuracy: $checkedConvert('accuracy', (v) => v as num?),
          magazineSize:
              $checkedConvert('magazineSize', (v) => (v as num?)?.toInt()),
          multishot: $checkedConvert('multishot', (v) => (v as num?)?.toInt()),
          noise: $checkedConvert('noise', (v) => v as String?),
          trigger: $checkedConvert('trigger', (v) => v as String?),
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
  val['type'] = const ItemTypeConverter().toJson(instance.type);
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  writeNotNull('releaseDate', instance.releaseDate);
  writeNotNull('excludeFromCodex', instance.excludeFromCodex);
  writeNotNull('wikiaThumbnail', instance.wikiaThumbnail);
  writeNotNull('wikiaUrl', instance.wikiaUrl);
  writeNotNull('attacks', instance.attacks?.map((e) => e.toJson()).toList());
  val['criticalChance'] = instance.criticalChance;
  val['criticalMultiplier'] = instance.criticalMultiplier;
  writeNotNull('damage', instance.damage?.toJson());
  val['damagePerShot'] = instance.damagePerShot;
  writeNotNull('disposition', instance.disposition);
  val['fireRate'] = instance.fireRate;
  val['omegaAttenuation'] = instance.omegaAttenuation;
  writeNotNull('polarities', instance.polarities);
  val['procChance'] = instance.procChance;
  writeNotNull('slot', instance.slot);
  writeNotNull('tags', instance.tags);
  val['totalDamage'] = instance.totalDamage;
  val['maxLevelCap'] = instance.maxLevelCap;
  writeNotNull('accuracy', instance.accuracy);
  writeNotNull('magazineSize', instance.magazineSize);
  writeNotNull('multishot', instance.multishot);
  writeNotNull('noise', instance.noise);
  writeNotNull('trigger', instance.trigger);
  writeNotNull('reloadTime', instance.reloadTime);
  return val;
}

PrimaryBuildable _$PrimaryBuildableFromJson(Map json) => $checkedCreate(
      'PrimaryBuildable',
      json,
      ($checkedConvert) {
        final val = PrimaryBuildable(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
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
          isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
          omegaAttenuation:
              $checkedConvert('omegaAttenuation', (v) => (v as num).toDouble()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          procChance:
              $checkedConvert('procChance', (v) => (v as num).toDouble()),
          slot: $checkedConvert('slot', (v) => (v as num?)?.toInt()),
          tags: $checkedConvert('tags',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          totalDamage: $checkedConvert('totalDamage', (v) => v as num),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          accuracy: $checkedConvert('accuracy', (v) => v as num?),
          magazineSize:
              $checkedConvert('magazineSize', (v) => (v as num?)?.toInt()),
          multishot: $checkedConvert('multishot', (v) => (v as num?)?.toInt()),
          noise: $checkedConvert('noise', (v) => v as String?),
          trigger: $checkedConvert('trigger', (v) => v as String?),
          reloadTime: $checkedConvert('reloadTime', (v) => v as num?),
          maxLevelCap:
              $checkedConvert('maxLevelCap', (v) => (v as num?)?.toInt() ?? 30),
          masteryReq:
              $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
          marketCost:
              $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
          itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
          disposition:
              $checkedConvert('disposition', (v) => (v as num?)?.toInt()),
          attacks: $checkedConvert(
              'attacks',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GunAttack.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
          buildPrice:
              $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
          buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => (v as num).toInt()),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PrimaryBuildableToJson(PrimaryBuildable instance) {
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
  writeNotNull('marketCost', instance.marketCost);
  writeNotNull('bpCost', instance.bpCost);
  writeNotNull('itemCount', instance.itemCount);
  writeNotNull('attacks', instance.attacks?.map((e) => e.toJson()).toList());
  val['criticalChance'] = instance.criticalChance;
  val['criticalMultiplier'] = instance.criticalMultiplier;
  writeNotNull('damage', instance.damage?.toJson());
  val['damagePerShot'] = instance.damagePerShot;
  writeNotNull('disposition', instance.disposition);
  val['fireRate'] = instance.fireRate;
  val['omegaAttenuation'] = instance.omegaAttenuation;
  writeNotNull('polarities', instance.polarities);
  val['procChance'] = instance.procChance;
  writeNotNull('slot', instance.slot);
  writeNotNull('tags', instance.tags);
  val['totalDamage'] = instance.totalDamage;
  val['maxLevelCap'] = instance.maxLevelCap;
  writeNotNull('accuracy', instance.accuracy);
  writeNotNull('magazineSize', instance.magazineSize);
  writeNotNull('multishot', instance.multishot);
  writeNotNull('noise', instance.noise);
  writeNotNull('trigger', instance.trigger);
  writeNotNull('reloadTime', instance.reloadTime);
  return val;
}
