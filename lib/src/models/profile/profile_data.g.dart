// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileData _$ProfileDataFromJson(Map json) => $checkedCreate(
      'ProfileData',
      json,
      ($checkedConvert) {
        final val = ProfileData(
          accountId: $checkedConvert('accountId', (v) => v as String),
          username: $checkedConvert('displayName', (v) => v as String),
          masteryRank: $checkedConvert('masteryRank', (v) => v as int),
          loadout: $checkedConvert('loadout',
              (v) => Arsenal.fromJson(Map<String, dynamic>.from(v as Map))),
          intrinsics: $checkedConvert('intrinsics',
              (v) => Intrinsics.fromJson(Map<String, dynamic>.from(v as Map))),
          challengeProgress: $checkedConvert(
              'challengeProgress',
              (v) => (v as List<dynamic>)
                  .map((e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          name: $jsonValue['name'] as String,
                          progress: $jsonValue['progress'] as int,
                        ),
                      ))
                  .toList()),
          guildId: $checkedConvert('guildId', (v) => v as String),
          guildName: $checkedConvert('guildName', (v) => v as String),
          guildTier: $checkedConvert('guildTier', (v) => v as int),
          guildXp: $checkedConvert('guildXp', (v) => v as int),
          guildClass: $checkedConvert('guildClass', (v) => v as int),
          guildEmblem: $checkedConvert('guildEmblem', (v) => v as bool),
          allianceId: $checkedConvert('allianceId', (v) => v as String),
          deathMarks: $checkedConvert('deathMarks',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          harvestable: $checkedConvert('harvestable', (v) => v as bool),
          deathSquadable: $checkedConvert('deathSquadable', (v) => v as bool),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
          migratedToConsole:
              $checkedConvert('migratedToConsole', (v) => v as bool),
          missions: $checkedConvert(
              'missions',
              (v) => (v as List<dynamic>)
                  .map((e) => ProfileMission.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          syndicates: $checkedConvert(
              'syndicates',
              (v) => (v as List<dynamic>)
                  .map((e) => _$recordConvertAny(
                        e,
                        ($jsonValue) => (
                          name: $jsonValue['name'] as String,
                          standing: $jsonValue['standing'] as int,
                          title: $jsonValue['title'] as int,
                        ),
                      ))
                  .toList()),
          dailyStanding: $checkedConvert(
              'dailyStanding',
              (v) => _$recordConvertAny(
                    v,
                    ($jsonValue) => (
                      cavia: $jsonValue['cavia'] as int,
                      conclave: $jsonValue['conclave'] as int,
                      daily: $jsonValue['daily'] as int,
                      entrati: $jsonValue['entrati'] as int,
                      holdfasts: $jsonValue['holdfasts'] as int,
                      kahl: $jsonValue['kahl'] as int,
                      necraloid: $jsonValue['necraloid'] as int,
                      ostron: $jsonValue['ostron'] as int,
                      quills: $jsonValue['quills'] as int,
                      simaris: $jsonValue['simaris'] as int,
                      solaris: $jsonValue['solaris'] as int,
                      ventKids: $jsonValue['ventKids'] as int,
                      voxSolaris: $jsonValue['voxSolaris'] as int,
                    ),
                  )),
          dailyFocus: $checkedConvert('dailyFocus', (v) => v as int),
          wishList: $checkedConvert('wishList', (v) => v),
          unlockedOperator:
              $checkedConvert('unlockedOperator', (v) => v as bool),
          unlockedAlignment:
              $checkedConvert('unlockedAlignment', (v) => v as bool),
          operatorLoadouts: $checkedConvert(
              'operatorLoadouts',
              (v) => (v as List<dynamic>)
                  .map((e) => OperatorLoadout.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          alignment: $checkedConvert(
              'alignment',
              (v) => _$recordConvertAny(
                    v,
                    ($jsonValue) => (
                      alignment: ($jsonValue['alignment'] as num).toDouble(),
                      wisdom: $jsonValue['wisdom'] as int,
                    ),
                  )),
        );
        return val;
      },
      fieldKeyMap: const {'username': 'displayName'},
    );

Map<String, dynamic> _$ProfileDataToJson(ProfileData instance) {
  final val = <String, dynamic>{
    'accountId': instance.accountId,
    'displayName': instance.username,
    'masteryRank': instance.masteryRank,
    'loadout': instance.loadout.toJson(),
    'intrinsics': instance.intrinsics.toJson(),
    'challengeProgress': instance.challengeProgress
        .map((e) => {
              'name': e.name,
              'progress': e.progress,
            })
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
        .map((e) => {
              'name': e.name,
              'standing': e.standing,
              'title': e.title,
            })
        .toList(),
    'dailyStanding': {
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
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wishList', instance.wishList);
  val['unlockedOperator'] = instance.unlockedOperator;
  val['unlockedAlignment'] = instance.unlockedAlignment;
  val['operatorLoadouts'] =
      instance.operatorLoadouts.map((e) => e.toJson()).toList();
  val['alignment'] = {
    'alignment': instance.alignment.alignment,
    'wisdom': instance.alignment.wisdom,
  };
  return val;
}

$Rec _$recordConvertAny<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map);
