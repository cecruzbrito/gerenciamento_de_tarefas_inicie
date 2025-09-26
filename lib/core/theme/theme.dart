import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xffab2f00),
      surfaceTint: Color(0xffaf3000),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd14210),
      onPrimaryContainer: Color(0xfffffbff),
      secondary: Color(0xff98462d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfffd9576),
      onSecondaryContainer: Color(0xff752c15),
      tertiary: Color(0xff745b00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffcca731),
      onTertiaryContainer: Color(0xff4f3d00),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff261814),
      onSurfaceVariant: Color(0xff5a4139),
      outline: Color(0xff8e7068),
      outlineVariant: Color(0xffe3bfb5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2d28),
      inversePrimary: Color(0xffffb59f),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3a0a00),
      primaryFixedDim: Color(0xffffb59f),
      onPrimaryFixedVariant: Color(0xff862300),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff3a0a00),
      secondaryFixedDim: Color(0xffffb59f),
      onSecondaryFixedVariant: Color(0xff7a2f18),
      tertiaryFixed: Color(0xffffe08b),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffeac24b),
      onTertiaryFixedVariant: Color(0xff584400),
      surfaceDim: Color(0xffefd4cd),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xffffe9e4),
      surfaceContainerHigh: Color(0xfffee2db),
      surfaceContainerHighest: Color(0xfff8ddd5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff691900),
      surfaceTint: Color(0xffaf3000),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc73b06),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff641f09),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffab543a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff443400),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff866a00),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff1b0e0a),
      onSurfaceVariant: Color(0xff48312a),
      outline: Color(0xff674c45),
      outlineVariant: Color(0xff84665e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2d28),
      inversePrimary: Color(0xffffb59f),
      primaryFixed: Color(0xffc73b06),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff9e2b00),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffab543a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8c3d24),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff866a00),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff685200),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbc1ba),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ed),
      surfaceContainer: Color(0xfffee2db),
      surfaceContainerHigh: Color(0xfff2d7d0),
      surfaceContainerHighest: Color(0xffe7ccc5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff571400),
      surfaceTint: Color(0xffaf3000),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8a2400),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff561502),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7d321a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff382a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a4700),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff3d2720),
      outlineVariant: Color(0xff5d433c),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2d28),
      inversePrimary: Color(0xffffb59f),
      primaryFixed: Color(0xff8a2400),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff631700),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7d321a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff5f1c06),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5a4700),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3f3100),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcdb3ac),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede8),
      surfaceContainer: Color(0xfff8ddd5),
      surfaceContainerHigh: Color(0xffe9cfc7),
      surfaceContainerHighest: Color(0xffdbc1ba),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb59f),
      surfaceTint: Color(0xffffb59f),
      onPrimary: Color(0xff5f1600),
      primaryContainer: Color(0xfff85d2c),
      onPrimaryContainer: Color(0xff3d0b00),
      secondary: Color(0xffffb59f),
      onSecondary: Color(0xff5c1904),
      secondaryContainer: Color(0xff7a2f18),
      onSecondaryContainer: Color(0xffff9b7d),
      tertiary: Color(0xffeac24b),
      onTertiary: Color(0xff3d2f00),
      tertiaryContainer: Color(0xffcca731),
      onTertiaryContainer: Color(0xff4f3d00),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1d100c),
      onSurface: Color(0xfff8ddd5),
      onSurfaceVariant: Color(0xffe3bfb5),
      outline: Color(0xffaa8a81),
      outlineVariant: Color(0xff5a4139),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff8ddd5),
      inversePrimary: Color(0xffaf3000),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff3a0a00),
      primaryFixedDim: Color(0xffffb59f),
      onPrimaryFixedVariant: Color(0xff862300),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff3a0a00),
      secondaryFixedDim: Color(0xffffb59f),
      onSecondaryFixedVariant: Color(0xff7a2f18),
      tertiaryFixed: Color(0xffffe08b),
      onTertiaryFixed: Color(0xff241a00),
      tertiaryFixedDim: Color(0xffeac24b),
      onTertiaryFixedVariant: Color(0xff584400),
      surfaceDim: Color(0xff1d100c),
      surfaceBright: Color(0xff463530),
      surfaceContainerLowest: Color(0xff180b07),
      surfaceContainerLow: Color(0xff261814),
      surfaceContainer: Color(0xff2b1c18),
      surfaceContainerHigh: Color(0xff362622),
      surfaceContainerHighest: Color(0xff42312c),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd3c6),
      surfaceTint: Color(0xffffb59f),
      onPrimary: Color(0xff4c1000),
      primaryContainer: Color(0xfff85d2c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd3c6),
      onSecondary: Color(0xff4c1000),
      secondaryContainer: Color(0xffd77659),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd969),
      onTertiary: Color(0xff302400),
      tertiaryContainer: Color(0xffcca731),
      onTertiaryContainer: Color(0xff2a1f00),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1d100c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffad4ca),
      outline: Color(0xffcdaaa1),
      outlineVariant: Color(0xffa98980),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff8ddd5),
      inversePrimary: Color(0xff882300),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff280500),
      primaryFixedDim: Color(0xffffb59f),
      onPrimaryFixedVariant: Color(0xff691900),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff280500),
      secondaryFixedDim: Color(0xffffb59f),
      onSecondaryFixedVariant: Color(0xff641f09),
      tertiaryFixed: Color(0xffffe08b),
      onTertiaryFixed: Color(0xff171000),
      tertiaryFixedDim: Color(0xffeac24b),
      onTertiaryFixedVariant: Color(0xff443400),
      surfaceDim: Color(0xff1d100c),
      surfaceBright: Color(0xff52403b),
      surfaceContainerLowest: Color(0xff100503),
      surfaceContainerLow: Color(0xff291a16),
      surfaceContainer: Color(0xff342420),
      surfaceContainerHigh: Color(0xff3f2f2a),
      surfaceContainerHighest: Color(0xff4b3a35),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece7),
      surfaceTint: Color(0xffffb59f),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaf98),
      onPrimaryContainer: Color(0xff1e0300),
      secondary: Color(0xffffece7),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaf98),
      onSecondaryContainer: Color(0xff1e0300),
      tertiary: Color(0xffffefca),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffe5be47),
      onTertiaryContainer: Color(0xff100a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1d100c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece7),
      outlineVariant: Color(0xffdebbb1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff8ddd5),
      inversePrimary: Color(0xff882300),
      primaryFixed: Color(0xffffdbd1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb59f),
      onPrimaryFixedVariant: Color(0xff280500),
      secondaryFixed: Color(0xffffdbd1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb59f),
      onSecondaryFixedVariant: Color(0xff280500),
      tertiaryFixed: Color(0xffffe08b),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffeac24b),
      onTertiaryFixedVariant: Color(0xff171000),
      surfaceDim: Color(0xff1d100c),
      surfaceBright: Color(0xff5f4c46),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2b1c18),
      surfaceContainer: Color(0xff3d2d28),
      surfaceContainerHigh: Color(0xff493732),
      surfaceContainerHighest: Color(0xff55433d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(bodyColor: colorScheme.onSurface, displayColor: colorScheme.onSurface),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
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
