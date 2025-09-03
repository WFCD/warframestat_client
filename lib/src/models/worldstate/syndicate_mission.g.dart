// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'syndicate_mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateMission _$SyndicateMissionFromJson(Map json) =>
    $checkedCreate('SyndicateMission', json, ($checkedConvert) {
      final val = SyndicateMission(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        syndicate: $checkedConvert('syndicate', (v) => v as String),
        syndicateKey: $checkedConvert('syndicateKey', (v) => v as String),
        nodes: $checkedConvert(
          'nodes',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        jobs: $checkedConvert(
          'jobs',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    SyndicateJob.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SyndicateMissionToJson(SyndicateMission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'syndicate': instance.syndicate,
      'syndicateKey': instance.syndicateKey,
      'nodes': instance.nodes,
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
    };
