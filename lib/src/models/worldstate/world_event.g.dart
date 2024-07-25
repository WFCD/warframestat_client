// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorldEvent _$WorldEventFromJson(Map json) => $checkedCreate(
      'WorldEvent',
      json,
      ($checkedConvert) {
        final val = WorldEvent(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          previousId: $checkedConvert('previousId', (v) => v as String?),
          startString: $checkedConvert('startString', (v) => v as String),
          active: $checkedConvert('active', (v) => v as bool),
          maximumScore:
              $checkedConvert('maximumScore', (v) => (v as num?)?.toInt()),
          currentScore:
              $checkedConvert('currentScore', (v) => (v as num?)?.toInt()),
          smallInterval:
              $checkedConvert('smallInterval', (v) => (v as num?)?.toInt()),
          largeInterval:
              $checkedConvert('largeInterval', (v) => (v as num?)?.toInt()),
          faction: $checkedConvert('faction', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String),
          tooltip: $checkedConvert('tooltip', (v) => v as String?),
          node: $checkedConvert('node', (v) => v as String?),
          concurrentNodes: $checkedConvert('concurrentNodes',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          victimNode: $checkedConvert('victimNode', (v) => v as String?),
          scoreLocTag: $checkedConvert('scoreLocTag', (v) => v as String?),
          rewards: $checkedConvert(
              'rewards',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Reward.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          expired: $checkedConvert('expired', (v) => v as bool),
          health: $checkedConvert('health', (v) => v as num?),
          affiliatedWith:
              $checkedConvert('affiliatedWith', (v) => v as String?),
          jobs: $checkedConvert(
              'jobs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => SyndicateJob.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          previousJobs: $checkedConvert(
              'previousJobs',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => SyndicateJob.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          interimSteps: $checkedConvert(
              'interimSteps',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      InterimStep.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          progressSteps: $checkedConvert(
              'progressSteps',
              (v) => (v as List<dynamic>)
                  .map((e) => ProgressStep.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          progressTotal:
              $checkedConvert('progressTotal', (v) => (v as num?)?.toInt()),
          showTotalAtEndOfMission:
              $checkedConvert('showTotalAtEndOfMission', (v) => v as bool?),
          isPersonal: $checkedConvert('isPersonal', (v) => v as bool?),
          isCommunity: $checkedConvert('isCommunity', (v) => v as bool?),
          regionDrops: $checkedConvert('regionDrops',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          archwingDrops: $checkedConvert('archwingDrops',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          metadata: $checkedConvert(
              'metadata',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )),
          completionBonuses: $checkedConvert(
              'completionBonuses',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => (e as num).toInt())
                  .toList()),
          scoreVar: $checkedConvert('scoreVar', (v) => v as String?),
          asString: $checkedConvert('asString', (v) => v as String),
          altExpiry:
              $checkedConvert('altExpiry', (v) => DateTime.parse(v as String)),
          altActivation: $checkedConvert(
              'altActivation', (v) => DateTime.parse(v as String)),
          nextAlt: $checkedConvert('nextAlt',
              (v) => NextAlt.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$WorldEventToJson(WorldEvent instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'activation': instance.activation.toIso8601String(),
    'expiry': instance.expiry.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('previousId', instance.previousId);
  val['startString'] = instance.startString;
  val['active'] = instance.active;
  writeNotNull('maximumScore', instance.maximumScore);
  writeNotNull('currentScore', instance.currentScore);
  writeNotNull('smallInterval', instance.smallInterval);
  writeNotNull('largeInterval', instance.largeInterval);
  writeNotNull('faction', instance.faction);
  val['description'] = instance.description;
  writeNotNull('tooltip', instance.tooltip);
  writeNotNull('node', instance.node);
  val['concurrentNodes'] = instance.concurrentNodes;
  writeNotNull('victimNode', instance.victimNode);
  writeNotNull('scoreLocTag', instance.scoreLocTag);
  val['rewards'] = instance.rewards.map((e) => e.toJson()).toList();
  val['expired'] = instance.expired;
  writeNotNull('health', instance.health);
  writeNotNull('affiliatedWith', instance.affiliatedWith);
  writeNotNull('jobs', instance.jobs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'previousJobs', instance.previousJobs?.map((e) => e.toJson()).toList());
  writeNotNull(
      'interimSteps', instance.interimSteps?.map((e) => e.toJson()).toList());
  val['progressSteps'] = instance.progressSteps.map((e) => e.toJson()).toList();
  writeNotNull('progressTotal', instance.progressTotal);
  writeNotNull('showTotalAtEndOfMission', instance.showTotalAtEndOfMission);
  writeNotNull('isPersonal', instance.isPersonal);
  writeNotNull('isCommunity', instance.isCommunity);
  writeNotNull('regionDrops', instance.regionDrops);
  writeNotNull('archwingDrops', instance.archwingDrops);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('completionBonuses', instance.completionBonuses);
  writeNotNull('scoreVar', instance.scoreVar);
  val['asString'] = instance.asString;
  val['altExpiry'] = instance.altExpiry.toIso8601String();
  val['altActivation'] = instance.altActivation.toIso8601String();
  val['nextAlt'] = instance.nextAlt.toJson();
  return val;
}

InterimStep _$InterimStepFromJson(Map json) => $checkedCreate(
      'InterimStep',
      json,
      ($checkedConvert) {
        final val = InterimStep(
          goal: $checkedConvert('goal', (v) => (v as num).toInt()),
          reward: $checkedConvert('reward',
              (v) => Reward.fromJson(Map<String, dynamic>.from(v as Map))),
          message: $checkedConvert('message',
              (v) => Message.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$InterimStepToJson(InterimStep instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'reward': instance.reward.toJson(),
      'message': instance.message.toJson(),
    };

Message _$MessageFromJson(Map json) => $checkedCreate(
      'Message',
      json,
      ($checkedConvert) {
        final val = Message(
          sender: $checkedConvert('sender', (v) => v as String?),
          subject: $checkedConvert('subject', (v) => v as String?),
          message: $checkedConvert('message', (v) => v as String?),
          senderIcon: $checkedConvert('senderIcon', (v) => v as String?),
          attachments: $checkedConvert('attachments', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sender', instance.sender);
  writeNotNull('subject', instance.subject);
  writeNotNull('message', instance.message);
  writeNotNull('senderIcon', instance.senderIcon);
  writeNotNull('attachments', instance.attachments);
  return val;
}

ProgressStep _$ProgressStepFromJson(Map json) => $checkedCreate(
      'ProgressStep',
      json,
      ($checkedConvert) {
        final val = ProgressStep(
          type: $checkedConvert('type', (v) => v as String),
          progressAmt:
              $checkedConvert('progressAmt', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProgressStepToJson(ProgressStep instance) =>
    <String, dynamic>{
      'type': instance.type,
      'progressAmt': instance.progressAmt,
    };

NextAlt _$NextAltFromJson(Map json) => $checkedCreate(
      'NextAlt',
      json,
      ($checkedConvert) {
        final val = NextAlt(
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$NextAltToJson(NextAlt instance) => <String, dynamic>{
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
    };
