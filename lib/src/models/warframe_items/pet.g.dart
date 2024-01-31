// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pet _$PetFromJson(Map json) => $checkedCreate(
      'Pet',
      json,
      ($checkedConvert) {
        final val = Pet(
          uniqueName: $checkedConvert('uniqueName', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          type: $checkedConvert('type',
              (v) => const ItemCategoryConverter().fromJson(v as String)),
          category: $checkedConvert('category', (v) => v as String),
          productCategory:
              $checkedConvert('productCategory', (v) => v as String?),
          tradable: $checkedConvert('tradable', (v) => v as bool? ?? false),
          imageName: $checkedConvert('imageName', (v) => v as String?),
          patchlogs: $checkedConvert(
              'patchlogs',
              (v) => (v as List<dynamic>)
                  .map((e) =>
                      Patchlog.fromJson(Map<String, dynamic>.from(e as Map)))
                  .toList()),
          armor: $checkedConvert('armor', (v) => v as int),
          health: $checkedConvert('health', (v) => v as int),
          shield: $checkedConvert('shield', (v) => v as int),
          stamina: $checkedConvert('stamina', (v) => v as num),
        );
        return val;
      },
    );

Map<String, dynamic> _$PetToJson(Pet instance) {
  final val = <String, dynamic>{
    'uniqueName': instance.uniqueName,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['type'] = const ItemCategoryConverter().toJson(instance.type);
  val['category'] = instance.category;
  writeNotNull('productCategory', instance.productCategory);
  val['tradable'] = instance.tradable;
  writeNotNull(
      'patchlogs', instance.patchlogs?.map((e) => e.toJson()).toList());
  writeNotNull('imageName', instance.imageName);
  val['armor'] = instance.armor;
  val['health'] = instance.health;
  val['shield'] = instance.shield;
  val['stamina'] = instance.stamina;
  return val;
}
