// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warframe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Warframe _$WarframeFromJson(Map json) => $checkedCreate(
      'Warframe',
      json,
      ($checkedConvert) {
        final val = Warframe(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          imageName: $checkedConvert('imageName', (v) => v as String),
          masteryReq: $checkedConvert('masteryReq', (v) => v as int?),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          marketCost: $checkedConvert('marketCost', (v) => v as int?),
          bpCost: $checkedConvert('bpCost', (v) => v as int?),
          itemCount: $checkedConvert('itemCount', (v) => v as int?),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
          power: $checkedConvert('power', (v) => v as int),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          abilities: $checkedConvert(
              'abilities',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Ability.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          aura: $checkedConvert('aura', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String),
          sprintSpeed: $checkedConvert('sprintSpeed', (v) => v as num),
          passiveDescription:
              $checkedConvert('passiveDescription', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as num),
          conclave: $checkedConvert('conclave', (v) => v as bool),
          introduced: $checkedConvert('introduced',
              (v) => Introduced.fromJson(Map<String, dynamic>.from(v as Map))),
          sprint: $checkedConvert('sprint', (v) => v as num),
          buildPrice: $checkedConvert('buildPrice', (v) => v as int? ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => v as int? ?? 1),
          buildTime: $checkedConvert('buildTime', (v) => v as int? ?? 0),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => v as int? ?? 0),
          consumeOnBuild:
              $checkedConvert('consumeOnBuild', (v) => v as bool? ?? true),
        );
        return val;
      },
    );

Map<String, dynamic> _$WarframeToJson(Warframe instance) {
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
  val['shield'] = instance.shield;
  val['armor'] = instance.armor;
  val['health'] = instance.health;
  val['stamina'] = instance.stamina;
  val['power'] = instance.power;
  writeNotNull('polarities', instance.polarities);
  val['abilities'] = instance.abilities.map((e) => e.toJson()).toList();
  writeNotNull('aura', instance.aura);
  val['sex'] = instance.sex;
  val['sprintSpeed'] = instance.sprintSpeed;
  writeNotNull('passiveDescription', instance.passiveDescription);
  val['color'] = instance.color;
  val['conclave'] = instance.conclave;
  val['introduced'] = instance.introduced.toJson();
  val['sprint'] = instance.sprint;
  return val;
}
