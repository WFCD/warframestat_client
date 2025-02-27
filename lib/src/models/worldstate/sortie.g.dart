// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sortie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sortie _$SortieFromJson(Map json) => $checkedCreate('Sortie', json, (
  $checkedConvert,
) {
  final val = Sortie(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    startString: $checkedConvert('startString', (v) => v as String),
    active: $checkedConvert('active', (v) => v as bool),
    rewardPool: $checkedConvert('rewardPool', (v) => v as String),
    variants: $checkedConvert(
      'variants',
      (v) =>
          (v as List<dynamic>)
              .map((e) => Variant.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    missions: $checkedConvert(
      'missions',
      (v) =>
          (v as List<dynamic>)
              .map((e) => Mission.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    boss: $checkedConvert('boss', (v) => v as String),
    faction: $checkedConvert('faction', (v) => v as String),
    factionKey: $checkedConvert('factionKey', (v) => v as String?),
    expired: $checkedConvert('expired', (v) => v as bool),
    eta: $checkedConvert('eta', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SortieToJson(Sortie instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  'startString': instance.startString,
  'active': instance.active,
  'rewardPool': instance.rewardPool,
  'variants': instance.variants.map((e) => e.toJson()).toList(),
  'missions': instance.missions.map((e) => e.toJson()).toList(),
  'boss': instance.boss,
  'faction': instance.faction,
  if (instance.factionKey case final value?) 'factionKey': value,
  'expired': instance.expired,
  'eta': instance.eta,
};
