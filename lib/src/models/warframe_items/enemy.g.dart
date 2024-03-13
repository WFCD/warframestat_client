// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enemy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Enemy _$EnemyFromJson(Map json) => $checkedCreate(
      'Enemy',
      json,
      ($checkedConvert) {
        final val = Enemy(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          type: $checkedConvert(
              'type', (v) => const ItemTypeConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          resistances: $checkedConvert(
              'resistances',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Resistance.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          regionBits: $checkedConvert('regionBits', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$EnemyToJson(Enemy instance) {
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
  writeNotNull('drops', instance.drops?.map((e) => e.toJson()).toList());
  val['health'] = instance.health;
  val['shield'] = instance.shield;
  val['armor'] = instance.armor;
  val['regionBits'] = instance.regionBits;
  val['resistances'] = instance.resistances.map((e) => e.toJson()).toList();
  return val;
}

Resistance _$ResistanceFromJson(Map json) => $checkedCreate(
      'Resistance',
      json,
      ($checkedConvert) {
        final val = Resistance(
          amount: $checkedConvert('amount', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          affectors: $checkedConvert(
              'affectors',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Affector.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResistanceToJson(Resistance instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'type': instance.type,
      'affectors': instance.affectors.map((e) => e.toJson()).toList(),
    };

Affector _$AffectorFromJson(Map json) => $checkedCreate(
      'Affector',
      json,
      ($checkedConvert) {
        final val = Affector(
          element: $checkedConvert('element', (v) => v as String),
          modifier: $checkedConvert('modifier', (v) => v as num),
        );
        return val;
      },
    );

Map<String, dynamic> _$AffectorToJson(Affector instance) => <String, dynamic>{
      'element': instance.element,
      'modifier': instance.modifier,
    };
