// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'enemy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Enemy _$EnemyFromJson(Map json) => $checkedCreate('Enemy', json, (
  $checkedConvert,
) {
  final val = Enemy(
    uniqueName: $checkedConvert('uniqueName', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    imageName: $checkedConvert('imageName', (v) => v as String?),
    patchlogs: $checkedConvert(
      'patchlogs',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    type: $checkedConvert(
      'type',
      (v) => const ItemTypeConverter().fromJson(v as String),
    ),
    category: $checkedConvert('category', (v) => v as String),
    productCategory: $checkedConvert('productCategory', (v) => v as String?),
    tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
    drops: $checkedConvert(
      'drops',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Drop.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    resistances: $checkedConvert(
      'resistances',
      (v) => (v as List<dynamic>)
          .map((e) => Resistance.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    ),
    health: $checkedConvert('health', (v) => (v as num).toInt()),
    shield: $checkedConvert('shield', (v) => (v as num).toInt()),
    armor: $checkedConvert('armor', (v) => (v as num).toInt()),
    regionBits: $checkedConvert('regionBits', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$EnemyToJson(Enemy instance) => <String, dynamic>{
  'uniqueName': instance.uniqueName,
  'name': instance.name,
  'description': ?instance.description,
  'type': const ItemTypeConverter().toJson(instance.type),
  'category': instance.category,
  'productCategory': ?instance.productCategory,
  'tradable': instance.tradable,
  'patchlogs': ?instance.patchlogs?.map((e) => e.toJson()).toList(),
  'imageName': ?instance.imageName,
  'drops': ?instance.drops?.map((e) => e.toJson()).toList(),
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
      amount: $checkedConvert('amount', (v) => (v as num).toInt()),
      type: $checkedConvert('type', (v) => v as String),
      affectors: $checkedConvert(
        'affectors',
        (v) => (v as List<dynamic>)
            .map((e) => Affector.fromJson(Map<String, dynamic>.from(e as Map)))
            .toList(),
      ),
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

Affector _$AffectorFromJson(Map json) =>
    $checkedCreate('Affector', json, ($checkedConvert) {
      final val = Affector(
        element: $checkedConvert('element', (v) => v as String),
        modifier: $checkedConvert('modifier', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$AffectorToJson(Affector instance) => <String, dynamic>{
  'element': instance.element,
  'modifier': instance.modifier,
};
