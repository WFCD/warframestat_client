// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'global_upgrade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalUpgrade _$GlobalUpgradeFromJson(Map json) =>
    $checkedCreate('GlobalUpgrade', json, ($checkedConvert) {
      final val = GlobalUpgrade(
        start: $checkedConvert('start', (v) => v as String),
        end: $checkedConvert('end', (v) => v as String),
        upgrade: $checkedConvert('upgrade', (v) => v as String),
        operation: $checkedConvert('operation', (v) => v as String),
        operationSymbol: $checkedConvert('operationSymbol', (v) => v as String),
        upgradeOperationValue: $checkedConvert(
          'upgradeOperationValue',
          (v) => (v as num).toInt(),
        ),
        expired: $checkedConvert('expired', (v) => v as bool),
        desc: $checkedConvert('desc', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$GlobalUpgradeToJson(GlobalUpgrade instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'upgrade': instance.upgrade,
      'operation': instance.operation,
      'operationSymbol': instance.operationSymbol,
      'upgradeOperationValue': instance.upgradeOperationValue,
      'expired': instance.expired,
      'desc': instance.desc,
    };
