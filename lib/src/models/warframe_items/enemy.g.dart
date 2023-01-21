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
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          armor: $checkedConvert('armor', (v) => v as int),
          regionBits: $checkedConvert('regionBits', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          tradable: $checkedConvert('tradable', (v) => v as bool),
          drops: $checkedConvert(
              'drops',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          resistances: $checkedConvert(
              'resistances',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Resistance.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$EnemyToJson(Enemy instance) => <String, dynamic>{
      'uniqueName': instance.uniqueName,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'category': instance.category,
      'tradable': instance.tradable,
      'imageName': instance.imageName,
      'drops': instance.drops?.map((e) => e.toJson()).toList(),
      'health': instance.health,
      'shield': instance.shield,
      'armor': instance.armor,
      'regionBits': instance.regionBits,
      'resistances': instance.resistances.map((e) => e.toJson()).toList(),
    };

Resistance _$ResistanceFromJson(Map json) => $checkedCreate(
      'Resistance',
      json,
      ($checkedConvert) {
        final val = Resistance(
          amount: $checkedConvert('amount', (v) => v as num),
          shield: $checkedConvert('shield', (v) => v as String),
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
      'shield': instance.shield,
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
