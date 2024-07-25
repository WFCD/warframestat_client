// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archwing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Archwing _$ArchwingFromJson(Map json) => $checkedCreate(
      'Archwing',
      json,
      ($checkedConvert) {
        final val = Archwing(
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
          masteryReq:
              $checkedConvert('masteryReq', (v) => (v as num?)?.toInt()),
          buildPrice:
              $checkedConvert('buildPrice', (v) => (v as num?)?.toInt() ?? 0),
          buildQuantity:
              $checkedConvert('buildQuantity', (v) => (v as num).toInt()),
          buildTime: $checkedConvert('buildTime', (v) => (v as num).toInt()),
          skipBuildTimePrice:
              $checkedConvert('skipBuildTimePrice', (v) => (v as num).toInt()),
          consumeOnBuild: $checkedConvert('consumeOnBuild', (v) => v as bool),
          components: $checkedConvert(
              'components',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Component.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          releaseDate: $checkedConvert('releaseDate', (v) => v as String?),
          marketCost:
              $checkedConvert('marketCost', (v) => (v as num?)?.toInt()),
          bpCost: $checkedConvert('bpCost', (v) => (v as num?)?.toInt()),
          itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
          wikiaThumbnail:
              $checkedConvert('wikiaThumbnail', (v) => v as String?),
          wikiaUrl: $checkedConvert('wikiaUrl', (v) => v as String?),
          isPrime: $checkedConvert('isPrime', (v) => v as bool? ?? false),
          vaulted: $checkedConvert('vaulted', (v) => v as bool?),
          shield: $checkedConvert('shield', (v) => (v as num).toInt()),
          armor: $checkedConvert('armor', (v) => (v as num).toInt()),
          health: $checkedConvert('health', (v) => (v as num).toInt()),
          stamina: $checkedConvert('stamina', (v) => v as num),
          power: $checkedConvert('power', (v) => (v as num).toInt()),
          polarities: $checkedConvert('polarities',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          abilities: $checkedConvert(
              'abilities',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Ability.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ArchwingToJson(Archwing instance) {
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
  return val;
}
