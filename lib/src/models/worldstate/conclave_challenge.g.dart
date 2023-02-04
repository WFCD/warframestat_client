// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conclave_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConclaveChallenge _$ConclaveChallengeFromJson(Map json) => $checkedCreate(
      'ConclaveChallenge',
      json,
      ($checkedConvert) {
        final val = ConclaveChallenge(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          mode: $checkedConvert('mode', (v) => v as String),
          amount: $checkedConvert('amount', (v) => v as int),
          expired: $checkedConvert('expired', (v) => v as bool),
          daily: $checkedConvert('daily', (v) => v as bool),
          description: $checkedConvert('description', (v) => v as String),
          category: $checkedConvert('category', (v) => v as String),
          rootChallenge: $checkedConvert('rootChallenge', (v) => v as bool),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConclaveChallengeToJson(ConclaveChallenge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['mode'] = instance.mode;
  val['amount'] = instance.amount;
  val['expired'] = instance.expired;
  val['daily'] = instance.daily;
  val['description'] = instance.description;
  val['category'] = instance.category;
  val['rootChallenge'] = instance.rootChallenge;
  return val;
}
