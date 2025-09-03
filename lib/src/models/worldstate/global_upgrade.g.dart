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
        upgrade: $checkedConvert('upgrade', (v) => v as String),
        operation: $checkedConvert('operation', (v) => v as String),
        operationSymbol: $checkedConvert('operationSymbol', (v) => v as String),
        upgradeOperationValue: $checkedConvert(
          'upgradeOperationValue',
          (v) => (v as num).toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$GlobalUpgradeToJson(GlobalUpgrade instance) =>
    <String, dynamic>{
      'upgrade': instance.upgrade,
      'operation': instance.operation,
      'operationSymbol': instance.operationSymbol,
      'upgradeOperationValue': instance.upgradeOperationValue,
    };
