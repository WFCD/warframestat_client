// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map json) => $checkedCreate(
      'Profile',
      json,
      ($checkedConvert) {
        final val = Profile(
          data: $checkedConvert('profile',
              (v) => ProfileData.fromJson(Map<String, dynamic>.from(v as Map))),
          xpCacheExpiryDate: $checkedConvert(
              'xpCacheExpiryDate', (v) => DateTime.parse(v as String)),
          ceremonyResetDate: $checkedConvert(
              'ceremonyResetDate', (v) => DateTime.parse(v as String)),
          stats: $checkedConvert('stats', (v) => v),
        );
        return val;
      },
      fieldKeyMap: const {'data': 'profile'},
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) {
  final val = <String, dynamic>{
    'profile': instance.data.toJson(),
    'xpCacheExpiryDate': instance.xpCacheExpiryDate.toIso8601String(),
    'ceremonyResetDate': instance.ceremonyResetDate.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stats', instance.stats);
  return val;
}
