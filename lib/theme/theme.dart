import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279855954),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289065683),
      onPrimaryContainer: Color(4278210877),
      secondary: Color(4283196249),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291750363),
      onSecondaryContainer: Color(4281683010),
      tertiary: Color(4282344309),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290963709),
      onTertiaryContainer: Color(4280699740),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4287823882),
      surface: Color(4294310902),
      onSurface: Color(4279704858),
      onSurfaceVariant: Color(4282403140),
      outline: Color(4285561204),
      outlineVariant: Color(4290759107),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4287289016),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278198551),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278210877),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278722584),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4281683010),
      tertiaryFixed: Color(4290963709),
      onTertiaryFixed: Color(4278197803),
      tertiaryFixedDim: Color(4289187041),
      onTertiaryFixedVariant: Color(4280699740),
      surfaceDim: Color(4292205527),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916144),
      surfaceContainer: Color(4293521386),
      surfaceContainerHigh: Color(4293192421),
      surfaceContainerHighest: Color(4292797663),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278205998),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281104993),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280564530),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284117607),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279450187),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283331204),
      onTertiaryContainer: Color(4294967295),
      error: Color(4285792262),
      onError: Color(4294967295),
      errorContainer: Color(4291767335),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310902),
      onSurface: Color(4279046672),
      onSurfaceVariant: Color(4281284660),
      outline: Color(4283127120),
      outlineVariant: Color(4284903274),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4287289016),
      primaryFixed: Color(4281104993),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278542665),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284117607),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282538576),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283331204),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281686379),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4290955459),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916144),
      surfaceContainer: Color(4293192421),
      surfaceContainerHigh: Color(4292402905),
      surfaceContainerHighest: Color(4291679182),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278203173),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278211647),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279906344),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281814596),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278464576),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280897119),
      onTertiaryContainer: Color(4294967295),
      error: Color(4284481540),
      onError: Color(4294967295),
      errorContainer: Color(4288151562),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310902),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4278190080),
      outline: Color(4280626730),
      outlineVariant: Color(4282534727),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4287289016),
      primaryFixed: Color(4278211647),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278205227),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281814596),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280301358),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280897119),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279121735),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4290034358),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293718765),
      surfaceContainer: Color(4292797663),
      surfaceContainerHigh: Color(4291876561),
      surfaceContainerHighest: Color(4290955459),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287289016),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278204457),
      primaryContainer: Color(4278210877),
      onPrimaryContainer: Color(4289065683),
      secondary: Color(4289973440),
      onSecondary: Color(4280169772),
      secondaryContainer: Color(4281683010),
      onSecondaryContainer: Color(4291750363),
      tertiary: Color(4289187041),
      onTertiary: Color(4278858821),
      tertiaryContainer: Color(4280699740),
      onTertiaryContainer: Color(4290963709),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279178514),
      onSurface: Color(4292797663),
      onSurfaceVariant: Color(4290759107),
      outline: Color(4287206285),
      outlineVariant: Color(4282403140),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4279855954),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278198551),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278210877),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278722584),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4281683010),
      tertiaryFixed: Color(4290963709),
      onTertiaryFixed: Color(4278197803),
      tertiaryFixedDim: Color(4289187041),
      onTertiaryFixedVariant: Color(4280699740),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4281613111),
      surfaceContainerLowest: Color(4278849293),
      surfaceContainerLow: Color(4279704858),
      surfaceContainer: Color(4279968030),
      surfaceContainerHigh: Color(4280625960),
      surfaceContainerHighest: Color(4281349683),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288670925),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278201375),
      primaryContainer: Color(4283670147),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291355349),
      onSecondary: Color(4279446049),
      secondaryContainer: Color(4286420619),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290568951),
      onTertiary: Color(4278200633),
      tertiaryContainer: Color(4285699753),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294955724),
      onError: Color(4283695107),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178514),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4292206552),
      outline: Color(4289377454),
      outlineVariant: Color(4287206285),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4278211134),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278195469),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278205998),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278195469),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4280564530),
      tertiaryFixed: Color(4290963709),
      onTertiaryFixed: Color(4278194973),
      tertiaryFixedDim: Color(4289187041),
      onTertiaryFixedVariant: Color(4279450187),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4282402370),
      surfaceContainerLowest: Color(4278454278),
      surfaceContainerLow: Color(4279836444),
      surfaceContainer: Color(4280494374),
      surfaceContainerHigh: Color(4281218097),
      surfaceContainerHighest: Color(4281941820),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290248673),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287025844),
      onPrimaryContainer: Color(4278193672),
      secondary: Color(4292671209),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4289710268),
      onSecondaryContainer: Color(4278193672),
      tertiary: Color(4292932607),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288923869),
      onTertiaryContainer: Color(4278193428),
      error: Color(4294962409),
      onError: Color(4278190080),
      errorContainer: Color(4294946468),
      onErrorContainer: Color(4280418305),
      surface: Color(4279178514),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294967295),
      outline: Color(4293522156),
      outlineVariant: Color(4290495935),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4278211134),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278195469),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4278195469),
      tertiaryFixed: Color(4290963709),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289187041),
      onTertiaryFixedVariant: Color(4278194973),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4283126094),
      surfaceContainerLowest: Color(4278190080),
      surfaceContainerLow: Color(4279968030),
      surfaceContainer: Color(4281086511),
      surfaceContainerHigh: Color(4281810233),
      surfaceContainerHighest: Color(4282533957),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
