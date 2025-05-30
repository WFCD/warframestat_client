// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'invasion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invasion _$InvasionFromJson(Map json) => $checkedCreate('Invasion', json, (
  $checkedConvert,
) {
  final val = Invasion(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    attacker: $checkedConvert(
      'attacker',
      (v) => InvasionFaction.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    attackingFaction: $checkedConvert('attackingFaction', (v) => v as String),
    completed: $checkedConvert('completed', (v) => v as bool),
    completion: $checkedConvert('completion', (v) => v as num),
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    defender: $checkedConvert(
      'defender',
      (v) => InvasionFaction.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    desc: $checkedConvert('desc', (v) => v as String),
    node: $checkedConvert('node', (v) => v as String),
    nodeKey: $checkedConvert('nodeKey', (v) => v as String),
    requiredRuns: $checkedConvert('requiredRuns', (v) => (v as num).toInt()),
    rewardTypes: $checkedConvert(
      'rewardTypes',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    vsInfestation: $checkedConvert('vsInfestation', (v) => v as bool),
    eta: $checkedConvert('eta', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$InvasionToJson(Invasion instance) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'attacker': instance.attacker.toJson(),
  'attackingFaction': instance.attackingFaction,
  'completed': instance.completed,
  'completion': instance.completion,
  'count': instance.count,
  'defender': instance.defender.toJson(),
  'desc': instance.desc,
  'node': instance.node,
  'nodeKey': instance.nodeKey,
  'requiredRuns': instance.requiredRuns,
  'rewardTypes': instance.rewardTypes,
  'vsInfestation': instance.vsInfestation,
  'eta': instance.eta,
};

InvasionFaction _$InvasionFactionFromJson(Map json) =>
    $checkedCreate('InvasionFaction', json, ($checkedConvert) {
      final val = InvasionFaction(
        reward: $checkedConvert(
          'reward',
          (v) =>
              v == null
                  ? null
                  : Reward.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
        faction: $checkedConvert('faction', (v) => v as String),
        factionKey: $checkedConvert('factionKey', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$InvasionFactionToJson(InvasionFaction instance) =>
    <String, dynamic>{
      if (instance.reward?.toJson() case final value?) 'reward': value,
      'faction': instance.faction,
      'factionKey': instance.factionKey,
    };
