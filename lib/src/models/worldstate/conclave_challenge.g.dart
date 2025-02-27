// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conclave_challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConclaveChallenge _$ConclaveChallengeFromJson(Map json) =>
    $checkedCreate('ConclaveChallenge', json, ($checkedConvert) {
      final val = ConclaveChallenge(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        mode: $checkedConvert('mode', (v) => v as String),
        amount: $checkedConvert('amount', (v) => (v as num).toInt()),
        expired: $checkedConvert('expired', (v) => v as bool),
        daily: $checkedConvert('daily', (v) => v as bool),
        description: $checkedConvert('description', (v) => v as String),
        category: $checkedConvert('category', (v) => v as String),
        rootChallenge: $checkedConvert('rootChallenge', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$ConclaveChallengeToJson(ConclaveChallenge instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'mode': instance.mode,
      'amount': instance.amount,
      'expired': instance.expired,
      'daily': instance.daily,
      'description': instance.description,
      'category': instance.category,
      'rootChallenge': instance.rootChallenge,
    };
