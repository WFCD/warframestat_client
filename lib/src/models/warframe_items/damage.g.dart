// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'damage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Damage _$DamageFromJson(Map json) =>
    $checkedCreate('Damage', json, ($checkedConvert) {
      final val = Damage(
        total: $checkedConvert('total', (v) => v as num? ?? 0),
        impact: $checkedConvert('impact', (v) => v as num? ?? 0),
        puncture: $checkedConvert('puncture', (v) => v as num? ?? 0),
        slash: $checkedConvert('slash', (v) => v as num? ?? 0),
        heat: $checkedConvert('heat', (v) => v as num? ?? 0),
        cold: $checkedConvert('cold', (v) => v as num? ?? 0),
        electricity: $checkedConvert('electricity', (v) => v as num? ?? 0),
        toxin: $checkedConvert('toxin', (v) => v as num? ?? 0),
        blast: $checkedConvert('blast', (v) => v as num? ?? 0),
        radiation: $checkedConvert('radiation', (v) => v as num? ?? 0),
        gas: $checkedConvert('gas', (v) => v as num? ?? 0),
        magnetic: $checkedConvert('magnetic', (v) => v as num? ?? 0),
        viral: $checkedConvert('viral', (v) => v as num? ?? 0),
        corrosive: $checkedConvert('corrosive', (v) => v as num? ?? 0),
        voidDamage: $checkedConvert('void', (v) => v as num? ?? 0),
        tau: $checkedConvert('tau', (v) => v as num? ?? 0),
        cinematic: $checkedConvert('cinematic', (v) => v as num? ?? 0),
        shieldDrain: $checkedConvert('shieldDrain', (v) => v as num? ?? 0),
        healthDrain: $checkedConvert('healthDrain', (v) => v as num? ?? 0),
        energyDrain: $checkedConvert('energyDrain', (v) => v as num? ?? 0),
        trueDamage: $checkedConvert('true', (v) => v as num? ?? 0),
      );
      return val;
    }, fieldKeyMap: const {'voidDamage': 'void', 'trueDamage': 'true'});

Map<String, dynamic> _$DamageToJson(Damage instance) => <String, dynamic>{
  'total': instance.total,
  'impact': instance.impact,
  'puncture': instance.puncture,
  'slash': instance.slash,
  'heat': instance.heat,
  'cold': instance.cold,
  'electricity': instance.electricity,
  'toxin': instance.toxin,
  'blast': instance.blast,
  'radiation': instance.radiation,
  'gas': instance.gas,
  'magnetic': instance.magnetic,
  'viral': instance.viral,
  'corrosive': instance.corrosive,
  'void': instance.voidDamage,
  'tau': instance.tau,
  'cinematic': instance.cinematic,
  'shieldDrain': instance.shieldDrain,
  'healthDrain': instance.healthDrain,
  'energyDrain': instance.energyDrain,
  'true': instance.trueDamage,
};
