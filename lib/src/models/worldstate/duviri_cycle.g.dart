// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duviri_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DuviriCycle _$DuviriCycleFromJson(Map json) =>
    $checkedCreate('DuviriCycle', json, ($checkedConvert) {
      final val = DuviriCycle(
        id: $checkedConvert('id', (v) => v as String),
        activation: $checkedConvert(
          'activation',
          (v) => DateTime.parse(v as String),
        ),
        expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        state: $checkedConvert(
          'state',
          (v) => $enumDecode(_$DuviriStateEnumMap, v),
        ),
        choices: $checkedConvert(
          'choices',
          (v) =>
              (v as List<dynamic>)
                  .map(
                    (e) => Choice.fromJson(Map<String, dynamic>.from(e as Map)),
                  )
                  .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$DuviriCycleToJson(DuviriCycle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activation': instance.activation.toIso8601String(),
      'expiry': instance.expiry.toIso8601String(),
      'state': _$DuviriStateEnumMap[instance.state]!,
      'choices': instance.choices.map((e) => e.toJson()).toList(),
    };

const _$DuviriStateEnumMap = {
  DuviriState.joy: 'joy',
  DuviriState.anger: 'anger',
  DuviriState.envy: 'envy',
  DuviriState.sorrow: 'sorrow',
  DuviriState.fear: 'fear',
};

Choice _$ChoiceFromJson(Map json) =>
    $checkedCreate('Choice', json, ($checkedConvert) {
      final val = Choice(
        category: $checkedConvert('category', (v) => v as String),
        categoryKey: $checkedConvert('categoryKey', (v) => v as String),
        choices: $checkedConvert(
          'choices',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChoiceToJson(Choice instance) => <String, dynamic>{
  'category': instance.category,
  'categoryKey': instance.categoryKey,
  'choices': instance.choices,
};
