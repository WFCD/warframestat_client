// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'syndicate_mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SyndicateMission _$SyndicateMissionFromJson(Map json) => $checkedCreate(
      'SyndicateMission',
      json,
      ($checkedConvert) {
        final val = SyndicateMission(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          active: $checkedConvert('active', (v) => v as bool),
          syndicate: $checkedConvert('syndicate', (v) => v as String),
          syndicateKey: $checkedConvert('syndicateKey', (v) => v as String),
          nodes: $checkedConvert('nodes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          jobs: $checkedConvert(
              'jobs',
              (v) => (v as List<dynamic>)
                  .map((e) => SyndicateJob.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$SyndicateMissionToJson(SyndicateMission instance) {
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
  val['syndicate'] = instance.syndicate;
  val['syndicateKey'] = instance.syndicateKey;
  val['nodes'] = instance.nodes;
  val['jobs'] = instance.jobs.map((e) => e.toJson()).toList();
  return val;
}
