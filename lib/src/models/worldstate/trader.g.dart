// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trader _$TraderFromJson(Map json) => $checkedCreate(
      'Trader',
      json,
      ($checkedConvert) {
        final val = Trader(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          character: $checkedConvert('character', (v) => v as String),
          location: $checkedConvert('location', (v) => v as String),
          inventory: $checkedConvert(
              'inventory',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      TraderItem.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          initialStart: $checkedConvert(
              'initialStart', (v) => DateTime.parse(v as String)),
          schedule: $checkedConvert(
              'schedule',
              (v) => (v as List<dynamic>)
                  .map((e) => TraderSchedule.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$TraderToJson(Trader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['active'] = instance.active;
  val['character'] = instance.character;
  val['location'] = instance.location;
  val['inventory'] = instance.inventory.map((e) => e.toJson()).toList();
  val['initialStart'] = instance.initialStart.toIso8601String();
  val['schedule'] = instance.schedule.map((e) => e.toJson()).toList();
  return val;
}
