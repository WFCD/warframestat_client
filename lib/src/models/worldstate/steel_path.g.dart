// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'steel_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPath _$SteelPathFromJson(Map json) =>
    $checkedCreate('SteelPath', json, ($checkedConvert) {
      final val = SteelPath(
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        currentReward: $checkedConvert(
          'currentReward',
          (v) => SteelPathReward.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
        rotation: $checkedConvert(
          'rotation',
          (v) =>
              (v as List<dynamic>)
                  .map(
                    (e) => SteelPathReward.fromJson(
                      Map<String, dynamic>.from(e as Map),
                    ),
                  )
                  .toList(),
        ),
        evergreens: $checkedConvert(
          'evergreens',
          (v) =>
              (v as List<dynamic>)
                  .map(
                    (e) => SteelPathReward.fromJson(
                      Map<String, dynamic>.from(e as Map),
                    ),
                  )
                  .toList(),
        ),
        incursions: $checkedConvert(
          'incursions',
          (v) => Incursion.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SteelPathToJson(SteelPath instance) => <String, dynamic>{
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'currentReward': instance.currentReward.toJson(),
  'rotation': instance.rotation.map((e) => e.toJson()).toList(),
  'evergreens': instance.evergreens.map((e) => e.toJson()).toList(),
  'incursions': instance.incursions.toJson(),
};

SteelPathReward _$SteelPathRewardFromJson(Map json) =>
    $checkedCreate('SteelPathReward', json, ($checkedConvert) {
      final val = SteelPathReward(
        name: $checkedConvert('name', (v) => v as String),
        cost: $checkedConvert('cost', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$SteelPathRewardToJson(SteelPathReward instance) =>
    <String, dynamic>{'name': instance.name, 'cost': instance.cost};

Incursion _$IncursionFromJson(Map json) =>
    $checkedCreate('Incursion', json, ($checkedConvert) {
      final val = Incursion(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$IncursionToJson(Incursion instance) => <String, dynamic>{
  if (instance.id case final value?) 'id': value,
  if (instance.activation?.toIso8601String() case final value?)
    'activation': value,
  if (instance.expiry?.toIso8601String() case final value?) 'expiry': value,
};
