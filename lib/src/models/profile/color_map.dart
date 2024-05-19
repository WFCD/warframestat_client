/// Color map for item
///
/// Note: hex may not always be correct
typedef ColorMap = ({String? hex, List<ColorMatch>? matches});

/// Palette information
typedef ColorMatch = ({ColorPalette palette, ColorPosition position});

/// Color palette name and description
typedef ColorPalette = ({String name, String description});

/// Color's position in the [ColorPalette]
typedef ColorPosition = ({int row, int col});
