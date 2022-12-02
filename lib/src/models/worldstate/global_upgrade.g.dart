// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_upgrade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalUpgrade _$GlobalUpgradeFromJson(Map json) => $checkedCreate(
      'GlobalUpgrade',
      json,
      ($checkedConvert) {
        final val = GlobalUpgrade(
          start: $checkedConvert('start', (v) => v as String),
          end: $checkedConvert('end', (v) => v as String),
          upgrade: $checkedConvert('upgrade', (v) => v as String),
          operation: $checkedConvert('operation', (v) => v as String),
          opeerationSymbol:
              $checkedConvert('opeerationSymbol', (v) => v as String),
          upgradeOperationValue:
              $checkedConvert('upgradeOperationValue', (v) => v as int),
          expired: $checkedConvert('expired', (v) => v as bool),
          desc: $checkedConvert('desc', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$GlobalUpgradeToJson(GlobalUpgrade instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'upgrade': instance.upgrade,
      'operation': instance.operation,
      'opeerationSymbol': instance.opeerationSymbol,
      'upgradeOperationValue': instance.upgradeOperationValue,
      'expired': instance.expired,
      'desc': instance.desc,
    };
