// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trader _$TraderFromJson(Map json) => $checkedCreate('Trader', json, (
  $checkedConvert,
) {
  final val = Trader(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    active: $checkedConvert('active', (v) => v as bool),
    character: $checkedConvert('character', (v) => v as String),
    location: $checkedConvert('location', (v) => v as String),
    inventory: $checkedConvert(
      'inventory',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => TraderItem.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    initialStart: $checkedConvert(
      'initialStart',
      (v) => DateTime.parse(v as String),
    ),
    schedule: $checkedConvert(
      'schedule',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) => TraderSchedule.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ),
              )
              .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$TraderToJson(Trader instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'active': instance.active,
  'character': instance.character,
  'location': instance.location,
  'inventory': instance.inventory.map((e) => e.toJson()).toList(),
  'initialStart': instance.initialStart.toIso8601String(),
  'schedule': instance.schedule.map((e) => e.toJson()).toList(),
};
