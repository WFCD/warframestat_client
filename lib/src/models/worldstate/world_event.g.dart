// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldEvent _$WorldEventFromJson(
  Map json,
) => $checkedCreate('WorldEvent', json, ($checkedConvert) {
  final val = WorldEvent(
    id: $checkedConvert('id', (v) => v as String),
    activation: $checkedConvert(
      'activation',
      (v) => DateTime.parse(v as String),
    ),
    expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
    previousId: $checkedConvert('previousId', (v) => v as String?),
    startString: $checkedConvert('startString', (v) => v as String),
    active: $checkedConvert('active', (v) => v as bool),
    maximumScore: $checkedConvert('maximumScore', (v) => (v as num?)?.toInt()),
    currentScore: $checkedConvert('currentScore', (v) => (v as num?)?.toInt()),
    smallInterval: $checkedConvert(
      'smallInterval',
      (v) => (v as num?)?.toInt(),
    ),
    largeInterval: $checkedConvert(
      'largeInterval',
      (v) => (v as num?)?.toInt(),
    ),
    faction: $checkedConvert('faction', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String),
    tooltip: $checkedConvert('tooltip', (v) => v as String?),
    node: $checkedConvert('node', (v) => v as String?),
    concurrentNodes: $checkedConvert(
      'concurrentNodes',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    victimNode: $checkedConvert('victimNode', (v) => v as String?),
    scoreLocTag: $checkedConvert('scoreLocTag', (v) => v as String?),
    rewards: $checkedConvert(
      'rewards',
      (v) =>
          (v as List<dynamic>)
              .map((e) => Reward.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList(),
    ),
    expired: $checkedConvert('expired', (v) => v as bool),
    health: $checkedConvert('health', (v) => v as num?),
    affiliatedWith: $checkedConvert('affiliatedWith', (v) => v as String?),
    jobs: $checkedConvert(
      'jobs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    SyndicateJob.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    previousJobs: $checkedConvert(
      'previousJobs',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    SyndicateJob.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    interimSteps: $checkedConvert(
      'interimSteps',
      (v) =>
          (v as List<dynamic>?)
              ?.map(
                (e) =>
                    InterimStep.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    progressSteps: $checkedConvert(
      'progressSteps',
      (v) =>
          (v as List<dynamic>)
              .map(
                (e) =>
                    ProgressStep.fromJson(Map<String, dynamic>.from(e as Map)),
              )
              .toList(),
    ),
    progressTotal: $checkedConvert(
      'progressTotal',
      (v) => (v as num?)?.toInt(),
    ),
    showTotalAtEndOfMission: $checkedConvert(
      'showTotalAtEndOfMission',
      (v) => v as bool?,
    ),
    isPersonal: $checkedConvert('isPersonal', (v) => v as bool?),
    isCommunity: $checkedConvert('isCommunity', (v) => v as bool?),
    regionDrops: $checkedConvert(
      'regionDrops',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    archwingDrops: $checkedConvert(
      'archwingDrops',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    metadata: $checkedConvert(
      'metadata',
      (v) => (v as Map?)?.map((k, e) => MapEntry(k as String, e)),
    ),
    completionBonuses: $checkedConvert(
      'completionBonuses',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    scoreVar: $checkedConvert('scoreVar', (v) => v as String?),
    asString: $checkedConvert('asString', (v) => v as String),
    altExpiry: $checkedConvert('altExpiry', (v) => DateTime.parse(v as String)),
    altActivation: $checkedConvert(
      'altActivation',
      (v) => DateTime.parse(v as String),
    ),
    nextAlt: $checkedConvert(
      'nextAlt',
      (v) => NextAlt.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    tag: $checkedConvert('tag', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$WorldEventToJson(
  WorldEvent instance,
) => <String, dynamic>{
  'id': instance.id,
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
  if (instance.previousId case final value?) 'previousId': value,
  'startString': instance.startString,
  'active': instance.active,
  if (instance.maximumScore case final value?) 'maximumScore': value,
  if (instance.currentScore case final value?) 'currentScore': value,
  if (instance.smallInterval case final value?) 'smallInterval': value,
  if (instance.largeInterval case final value?) 'largeInterval': value,
  if (instance.faction case final value?) 'faction': value,
  'description': instance.description,
  if (instance.tooltip case final value?) 'tooltip': value,
  if (instance.node case final value?) 'node': value,
  'concurrentNodes': instance.concurrentNodes,
  if (instance.victimNode case final value?) 'victimNode': value,
  if (instance.scoreLocTag case final value?) 'scoreLocTag': value,
  'rewards': instance.rewards.map((e) => e.toJson()).toList(),
  'expired': instance.expired,
  if (instance.health case final value?) 'health': value,
  if (instance.affiliatedWith case final value?) 'affiliatedWith': value,
  if (instance.jobs?.map((e) => e.toJson()).toList() case final value?)
    'jobs': value,
  if (instance.previousJobs?.map((e) => e.toJson()).toList() case final value?)
    'previousJobs': value,
  if (instance.interimSteps?.map((e) => e.toJson()).toList() case final value?)
    'interimSteps': value,
  'progressSteps': instance.progressSteps.map((e) => e.toJson()).toList(),
  if (instance.progressTotal case final value?) 'progressTotal': value,
  if (instance.showTotalAtEndOfMission case final value?)
    'showTotalAtEndOfMission': value,
  if (instance.isPersonal case final value?) 'isPersonal': value,
  if (instance.isCommunity case final value?) 'isCommunity': value,
  if (instance.regionDrops case final value?) 'regionDrops': value,
  if (instance.archwingDrops case final value?) 'archwingDrops': value,
  if (instance.metadata case final value?) 'metadata': value,
  if (instance.completionBonuses case final value?) 'completionBonuses': value,
  if (instance.scoreVar case final value?) 'scoreVar': value,
  'asString': instance.asString,
  'altExpiry': instance.altExpiry.toIso8601String(),
  'altActivation': instance.altActivation.toIso8601String(),
  'nextAlt': instance.nextAlt.toJson(),
  'tag': instance.tag,
};

InterimStep _$InterimStepFromJson(Map json) =>
    $checkedCreate('InterimStep', json, ($checkedConvert) {
      final val = InterimStep(
        goal: $checkedConvert('goal', (v) => (v as num).toInt()),
        reward: $checkedConvert(
          'reward',
          (v) => Reward.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
        message: $checkedConvert(
          'message',
          (v) => Message.fromJson(Map<String, dynamic>.from(v as Map)),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InterimStepToJson(InterimStep instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward.toJson(),
      'message': instance.message.toJson(),
    };

Message _$MessageFromJson(Map json) =>
    $checkedCreate('Message', json, ($checkedConvert) {
      final val = Message(
        sender: $checkedConvert('sender', (v) => v as String?),
        subject: $checkedConvert('subject', (v) => v as String?),
        message: $checkedConvert('message', (v) => v as String?),
        senderIcon: $checkedConvert('senderIcon', (v) => v as String?),
        attachments: $checkedConvert('attachments', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
  if (instance.sender case final value?) 'sender': value,
  if (instance.subject case final value?) 'subject': value,
  if (instance.message case final value?) 'message': value,
  if (instance.senderIcon case final value?) 'senderIcon': value,
  if (instance.attachments case final value?) 'attachments': value,
};

ProgressStep _$ProgressStepFromJson(Map json) =>
    $checkedCreate('ProgressStep', json, ($checkedConvert) {
      final val = ProgressStep(
        type: $checkedConvert('type', (v) => v as String),
        progressAmt: $checkedConvert('progressAmt', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ProgressStepToJson(ProgressStep instance) =>
    <String, dynamic>{
      'type': instance.type,
      'progressAmt': instance.progressAmt,
    };

NextAlt _$NextAltFromJson(Map json) =>
    $checkedCreate('NextAlt', json, ($checkedConvert) {
      final val = NextAlt(
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$NextAltToJson(NextAlt instance) => <String, dynamic>{
  'activation': instance.activation.toIso8601String(),
  'expiry': instance.expiry.toIso8601String(),
};
