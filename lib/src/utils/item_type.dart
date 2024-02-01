/// Item cateogry types.
enum ItemType {
  /// Warframe category.
  warframes('Warframes'),

  /// Melee category.
  melee('Melee'),

  /// Arch-Melee category.
  archMelee('Arch-Melee'),

  /// Primary category.
  primary('Primary'),

  /// Arch-Gun category.
  archGun('Arch-Gun'),

  /// Resource category.
  resources('Resources'),

  /// Skins category.
  skins('Skins'),

  /// Gear category.
  gear('Gear'),

  /// Mods category.
  mods('Mods'),

  /// Arcanes category.
  arcanes('Arcanes'),

  /// Archwing category.
  archwing('Archwing'),

  /// Fish category.
  fish('Fish'),

  /// Glyphs category.
  glyphs('Glyphs'),

  /// Misc category.
  misc('Misc'),

  /// Node category.
  node('Node'),

  /// Quests category.
  quests('Quests'),

  /// Relics category.
  relics('Relics'),

  /// Pet Resource category.
  petResource('Pet Resource'),

  /// Sigils category.
  sigils('Sigils'),

  /// Secondary category.
  secondary('Secondary'),

  /// Pets category.
  pets('Pets'),

  /// Sentinel category.
  sentinels('Sentinels'),

  /// Necramech Mod
  necramechMod('Necramech Mod');

  const ItemType(this.category);

  /// Item Category name.
  final String category;

  /// Returns an [ItemType] from an Item type.
  static ItemType byCategory(String name) {
    try {
      return ItemType.values.firstWhere((v) => v.category == name);
    } catch (e) {
      return ItemType.misc;
    }
  }
}
