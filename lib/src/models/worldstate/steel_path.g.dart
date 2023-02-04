// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'steel_path.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SteelPath _$SteelPathFromJson(Map json) => $checkedCreate(
      'SteelPath',
      json,
      ($checkedConvert) {
        final val = SteelPath(
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
          currentReward: $checkedConvert(
              'currentReward',
              (v) => SteelPathReward.fromJson(
                  Map<String, dynamic>.from(v as Map))),
          rotation: $checkedConvert(
              'rotation',
              (v) => (v as List<dynamic>)
                  .map((e) => SteelPathReward.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          evergreens: $checkedConvert(
              'evergreens',
              (v) => (v as List<dynamic>)
                  .map((e) => SteelPathReward.fromJson(
                      Map<String, dynamic>.from(e as Map)))
                  .toList()),
          incursions: $checkedConvert('incursions',
              (v) => Incursion.fromJson(Map<String, dynamic>.from(v as Map))),
        );
        return val;
      },
    );

Map<String, dynamic> _$SteelPathToJson(SteelPath instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  val['currentReward'] = instance.currentReward.toJson();
  val['rotation'] = instance.rotation.map((e) => e.toJson()).toList();
  val['evergreens'] = instance.evergreens.map((e) => e.toJson()).toList();
  val['incursions'] = instance.incursions.toJson();
  return val;
}

SteelPathReward _$SteelPathRewardFromJson(Map json) => $checkedCreate(
      'SteelPathReward',
      json,
      ($checkedConvert) {
        final val = SteelPathReward(
          name: $checkedConvert('name', (v) => v as String),
          cost: $checkedConvert('cost', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$SteelPathRewardToJson(SteelPathReward instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cost': instance.cost,
    };

Incursion _$IncursionFromJson(Map json) => $checkedCreate(
      'Incursion',
      json,
      ($checkedConvert) {
        final val = Incursion(
          id: $checkedConvert('id', (v) => v as String),
          activation:
              $checkedConvert('activation', (v) => DateTime.parse(v as String)),
          expiry: $checkedConvert('expiry', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$IncursionToJson(Incursion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('activation', instance.activation?.toIso8601String());
  writeNotNull('expiry', instance.expiry?.toIso8601String());
  return val;
}
