// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: strict_raw_type, document_ignores, cast_nullable_to_non_nullable, unnecessary_null_checks, specify_nonobvious_property_types

// dart format off


part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map json) => $checkedCreate('Profile', json, (
  $checkedConvert,
) {
  final val = Profile(
    accountId: $checkedConvert('accountId', (v) => v as String),
    username: $checkedConvert('displayName', (v) => v as String),
    masteryRank: $checkedConvert('masteryRank', (v) => (v as num).toInt()),
    loadout: $checkedConvert(
      'loadout',
      (v) => Arsenal.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    intrinsics: $checkedConvert(
      'intrinsics',
      (v) => Intrinsics.fromJson(Map<String, dynamic>.from(v as Map)),
    ),
    challengeProgress: $checkedConvert(
      'challengeProgress',
      (v) => (v as List<dynamic>)
          .map(
            (e) => _$recordConvertAny(
              e,
              ($jsonValue) => (
                name: $jsonValue['name'] as String,
                progress: ($jsonValue['progress'] as num).toInt(),
              ),
            ),
          )
          .toList(),
    ),
    guildId: $checkedConvert('guildId', (v) => v as String),
    guildName: $checkedConvert('guildName', (v) => v as String),
    guildTier: $checkedConvert('guildTier', (v) => (v as num).toInt()),
    guildXp: $checkedConvert('guildXp', (v) => (v as num).toInt()),
    guildClass: $checkedConvert('guildClass', (v) => (v as num).toInt()),
    guildEmblem: $checkedConvert('guildEmblem', (v) => v as bool),
    allianceId: $checkedConvert('allianceId', (v) => v as String),
    deathMarks: $checkedConvert(
      'deathMarks',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    harvestable: $checkedConvert('harvestable', (v) => v as bool),
    deathSquadable: $checkedConvert('deathSquadable', (v) => v as bool),
    created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
    migratedToConsole: $checkedConvert('migratedToConsole', (v) => v as bool),
    missions: $checkedConvert(
      'missions',
      (v) => (v as List<dynamic>)
          .map(
            (e) => ProfileMission.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    syndicates: $checkedConvert(
      'syndicates',
      (v) => (v as List<dynamic>)
          .map(
            (e) => _$recordConvertAny(
              e,
              ($jsonValue) => (
                name: $jsonValue['name'] as String,
                standing: ($jsonValue['standing'] as num).toInt(),
                title: ($jsonValue['title'] as num).toInt(),
              ),
            ),
          )
          .toList(),
    ),
    dailyStanding: $checkedConvert(
      'dailyStanding',
      (v) => _$recordConvertAny(
        v,
        ($jsonValue) => (
          cavia: ($jsonValue['cavia'] as num).toInt(),
          conclave: ($jsonValue['conclave'] as num).toInt(),
          daily: ($jsonValue['daily'] as num).toInt(),
          entrati: ($jsonValue['entrati'] as num).toInt(),
          holdfasts: ($jsonValue['holdfasts'] as num).toInt(),
          kahl: ($jsonValue['kahl'] as num).toInt(),
          necraloid: ($jsonValue['necraloid'] as num).toInt(),
          ostron: ($jsonValue['ostron'] as num).toInt(),
          quills: ($jsonValue['quills'] as num).toInt(),
          simaris: ($jsonValue['simaris'] as num).toInt(),
          solaris: ($jsonValue['solaris'] as num).toInt(),
          ventKids: ($jsonValue['ventKids'] as num).toInt(),
          voxSolaris: ($jsonValue['voxSolaris'] as num).toInt(),
        ),
      ),
    ),
    dailyFocus: $checkedConvert('dailyFocus', (v) => (v as num).toInt()),
    wishList: $checkedConvert('wishList', (v) => v),
    unlockedOperator: $checkedConvert('unlockedOperator', (v) => v as bool),
    unlockedAlignment: $checkedConvert('unlockedAlignment', (v) => v as bool),
    operatorLoadouts: $checkedConvert(
      'operatorLoadouts',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                OperatorLoadout.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList(),
    ),
    alignment: $checkedConvert(
      'alignment',
      (v) => _$recordConvertAny(
        v,
        ($jsonValue) => (
          alignment: ($jsonValue['alignment'] as num).toDouble(),
          wisdom: ($jsonValue['wisdom'] as num).toInt(),
        ),
      ),
    ),
  );
  return val;
}, fieldKeyMap: const {'username': 'displayName'});

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'accountId': instance.accountId,
  'displayName': instance.username,
  'masteryRank': instance.masteryRank,
  'loadout': instance.loadout.toJson(),
  'intrinsics': instance.intrinsics.toJson(),
  'challengeProgress': instance.challengeProgress
      .map((e) => <String, dynamic>{'name': e.name, 'progress': e.progress})
      .toList(),
  'guildId': instance.guildId,
  'guildName': instance.guildName,
  'guildTier': instance.guildTier,
  'guildXp': instance.guildXp,
  'guildClass': instance.guildClass,
  'guildEmblem': instance.guildEmblem,
  'allianceId': instance.allianceId,
  'deathMarks': instance.deathMarks,
  'harvestable': instance.harvestable,
  'deathSquadable': instance.deathSquadable,
  'created': instance.created.toIso8601String(),
  'migratedToConsole': instance.migratedToConsole,
  'missions': instance.missions.map((e) => e.toJson()).toList(),
  'syndicates': instance.syndicates
      .map(
        (e) => <String, dynamic>{
          'name': e.name,
          'standing': e.standing,
          'title': e.title,
        },
      )
      .toList(),
  'dailyStanding': <String, dynamic>{
    'cavia': instance.dailyStanding.cavia,
    'conclave': instance.dailyStanding.conclave,
    'daily': instance.dailyStanding.daily,
    'entrati': instance.dailyStanding.entrati,
    'holdfasts': instance.dailyStanding.holdfasts,
    'kahl': instance.dailyStanding.kahl,
    'necraloid': instance.dailyStanding.necraloid,
    'ostron': instance.dailyStanding.ostron,
    'quills': instance.dailyStanding.quills,
    'simaris': instance.dailyStanding.simaris,
    'solaris': instance.dailyStanding.solaris,
    'ventKids': instance.dailyStanding.ventKids,
    'voxSolaris': instance.dailyStanding.voxSolaris,
  },
  'dailyFocus': instance.dailyFocus,
  'wishList': ?instance.wishList,
  'unlockedOperator': instance.unlockedOperator,
  'unlockedAlignment': instance.unlockedAlignment,
  'operatorLoadouts': instance.operatorLoadouts.map((e) => e.toJson()).toList(),
  'alignment': <String, dynamic>{
    'alignment': instance.alignment.alignment,
    'wisdom': instance.alignment.wisdom,
  },
};

$Rec _$recordConvertAny<$Rec>(Object? value, $Rec Function(Map) convert) =>
    convert(value as Map);
