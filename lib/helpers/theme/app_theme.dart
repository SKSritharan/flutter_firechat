/*
* File : App Theme
* Version : 1.0.0
* */

import 'package:firechat/helpers/theme/custom_theme.dart';
import 'package:firechat/helpers/theme/theme_type.dart';
import 'package:firechat/helpers/widgets/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

export 'custom_theme.dart';
export 'navigation_theme.dart';

ThemeData get theme => AppTheme.theme;

class AppTheme {
  static ThemeType themeType = ThemeType.light;
  static TextDirection textDirection = TextDirection.rtl;

  static CustomTheme customTheme = getCustomTheme();
  static ThemeData theme = getTheme();

  static ThemeData nftTheme = getNFTTheme();
  static ThemeData rentalServiceTheme = getRentalServiceTheme();

  static ThemeData cookifyTheme = AppTheme.themeType == ThemeType.light
      ? cookifyLightTheme
      : cookifyDarkTheme;
//---------------------------NEW-----------------------------------------

  static ThemeData plantTheme =
      AppTheme.themeType == ThemeType.light ? plantLightTheme : plantDarkTheme;

  static ThemeData plantLightTheme = createTheme(
    ColorScheme.fromSeed(
      seedColor: const Color(0xff009900),
      primary: Colors.green.shade600,
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xff08c002),
      error: const Color(0xffFF0000),
      background: const Color(0xffffffff),
      onBackground: const Color(0xffffffff),
    ),
  );
  static ThemeData plantDarkTheme = createTheme(
    ColorScheme.fromSeed(
      seedColor: const Color(0xff00ff00),
      primary: Colors.green.shade600,
      // primary: Color(0xff40826D),
      onPrimary: const Color(0xffffffff),
      error: const Color(0xffFF0000),
      primaryContainer: const Color(0xff27AE60),
      onBackground: const Color(0xffffffff),
      background: const Color(0xffffffff),
    ),
  );

  static ThemeData cookifyLightTheme = createTheme(
    ColorScheme.fromSeed(
      seedColor: const Color(0xfff57a66),
      primary: const Color(0xffdf7463),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xfffdeeea),
      onPrimaryContainer: const Color(0xffe73a1f),
      secondary: const Color(0xff5e3f22),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xffe7bc91),
      onSecondaryContainer: const Color(0xff462601),
    ),
  );
  static ThemeData cookifyDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xfffcccc5),
        primary: const Color(0xfffcccc5),
        onPrimary: const Color(0xffec371a),
        primaryContainer: const Color(0xffec6d5a),
        onPrimaryContainer: const Color(0xffffeeec),
        secondary: const Color(0xfffcc18e),
        onSecondary: const Color(0xff381f01),
        secondaryContainer: const Color(0xff54381e),
        onSecondaryContainer: const Color(0xffe7cbae),
        onBackground: const Color(0xffe6e1e5)),
  );

  static ThemeData datingTheme = AppTheme.themeType == ThemeType.light
      ? datingLightTheme
      : datingDarkTheme;

  static ThemeData datingLightTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xffB428C3),
        secondary: const Color(0xfff15f5f),
        onSecondary: const Color(0xffffffff),
        secondaryContainer: const Color(0xfffcd8d8),
        onSecondaryContainer: const Color(0xffea2929)),
  );
  static ThemeData datingDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xfff1b0f8),
        primary: const Color(0xfff1b0f8),
        onPrimary: const Color(0xff9614a4),
        primaryContainer: const Color(0xffde4cef),
        onPrimaryContainer: const Color(0xfff8d8fd),
        secondary: const Color(0xfff88686),
        onSecondary: const Color(0xff8f1313),
        secondaryContainer: const Color(0xffec3535),
        onSecondaryContainer: const Color(0xfff6cdcd),
        onBackground: const Color(0xffe6e1e5)),
  );

  // Change
  static ThemeData estateTheme = AppTheme.themeType == ThemeType.light
      ? estateLightTheme
      : estateDarkTheme;

  static ThemeData estateLightTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xff1c8c8c),
        primaryContainer: const Color(0xffdafafa),
        secondary: const Color(0xfff15f5f),
        onSecondary: const Color(0xffffffff),
        secondaryContainer: const Color(0xfff8d6d6),
        onSecondaryContainer: const Color(0xff570202)),
  );
  static ThemeData estateDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xffcaffff),
        primary: const Color(0xffcaffff),
        onPrimary: const Color(0xff0b7777),
        primaryContainer: const Color(0xff18a6a6),
        onPrimaryContainer: const Color(0xffe5fdfd),
        secondary: const Color(0xffeea6a6),
        onSecondary: const Color(0xff491818),
        secondaryContainer: const Color(0xff7a2f2f),
        onSecondaryContainer: const Color(0xffefdada),
        onBackground: const Color(0xffe6e1e5)),
  );

  static ThemeData homemadeTheme = AppTheme.themeType == ThemeType.light
      ? homemadeLightTheme
      : homemadeDarkTheme;

  static ThemeData homemadeLightTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xffc5558e),
        secondary: const Color(0xffCC9D60),
        onSecondary: const Color(0xffffffff),
        secondaryContainer: const Color(0xfffce7cf),
        onSecondaryContainer: const Color(0xffc47712)),
  );
  static ThemeData homemadeDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xfffaafd4),
        primary: const Color(0xfffaafd4),
        onPrimary: const Color(0xffbb2e75),
        primaryContainer: const Color(0xffd95a9b),
        onPrimaryContainer: const Color(0xfffadaea),
        secondary: const Color(0xffecc797),
        onSecondary: const Color(0xff4f3616),
        secondaryContainer: const Color(0xff855b25),
        onSecondaryContainer: const Color(0xfff5e6d6),
        onBackground: const Color(0xffe6e1e5)),
  );

  static ThemeData learningTheme = AppTheme.themeType == ThemeType.light
      ? learningLightTheme
      : learningDarkTheme;

  static ThemeData learningLightTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xff6874E8),
        secondary: const Color(0xff548c2f),
        onSecondary: const Color(0xffffffff),
        secondaryContainer: const Color(0xffdef0d1),
        onSecondaryContainer: const Color(0xff131F0a)),
  );
  static ThemeData learningDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xffcfd2ff),
        primary: const Color(0xffcfd2ff),
        onPrimary: const Color(0xff1529e8),
        primaryContainer: const Color(0xff5563e8),
        onPrimaryContainer: const Color(0xffe6e7fd),
        secondary: const Color(0xffd3ebc1),
        onSecondary: const Color(0xff253e14),
        secondaryContainer: const Color(0xff4B7b28),
        onSecondaryContainer: const Color(0xffe9f5e0),
        onBackground: const Color(0xffe6e1e5)),
  );

  static ThemeData shoppingManagerTheme = getShoppingManagerTheme();

  static ThemeData getShoppingManagerTheme() {
    return createThemeM3(themeType, const Color(0xff5a4a94));
  }

  static ThemeData shoppingTheme = AppTheme.themeType == ThemeType.light
      ? shoppingLightTheme
      : shoppingDarkTheme;

  static ThemeData shoppingLightTheme = createTheme(
    ColorScheme.fromSeed(
      seedColor: const Color(0xff1c8c8c),
      primaryContainer: const Color(0xffdafafa),
      secondary: const Color(0xfff15f5f),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xfff8d6d6),
      onSecondaryContainer: const Color(0xff570202),
    ),
  );
  static ThemeData shoppingDarkTheme = createTheme(
    ColorScheme.fromSeed(
        seedColor: const Color(0xffcaffff),
        primary: const Color(0xffcaffff),
        onPrimary: const Color(0xff0b7777),
        primaryContainer: const Color(0xff18a6a6),
        onPrimaryContainer: const Color(0xffe5fdfd),
        secondary: const Color(0xffeea6a6),
        onSecondary: const Color(0xff491818),
        secondaryContainer: const Color(0xff7a2f2f),
        onSecondaryContainer: const Color(0xffefdada),
        onBackground: const Color(0xffe6e1e5)),
  );

  AppTheme._();

  static init() {
    initTextStyle();
  }

  static initTextStyle() {
    MyTextStyle.changeFontFamily(GoogleFonts.ibmPlexSans);
    MyTextStyle.changeDefaultFontWeight({
      100: FontWeight.w100,
      200: FontWeight.w200,
      300: FontWeight.w300,
      400: FontWeight.w300,
      500: FontWeight.w400,
      600: FontWeight.w500,
      700: FontWeight.w600,
      800: FontWeight.w700,
      900: FontWeight.w800,
    });

    MyTextStyle.changeDefaultTextFontWeight({
      MyTextType.displayLarge: 500,
      MyTextType.displayMedium: 500,
      MyTextType.displaySmall: 500,
      MyTextType.headlineLarge: 500,
      MyTextType.headlineMedium: 500,
      MyTextType.headlineSmall: 500,
      MyTextType.titleLarge: 500,
      MyTextType.titleMedium: 500,
      MyTextType.titleSmall: 500,
      MyTextType.labelLarge: 500,
      MyTextType.labelMedium: 500,
      MyTextType.labelSmall: 500,
      MyTextType.bodyLarge: 500,
      MyTextType.bodyMedium: 500,
      MyTextType.bodySmall: 500,
    });
  }

  static ThemeData getTheme([ThemeType? themeType]) {
    themeType = themeType ?? AppTheme.themeType;
    if (themeType == ThemeType.light) return lightTheme;
    return darkTheme;
  }

  static CustomTheme getCustomTheme([ThemeType? themeType]) {
    themeType = themeType ?? AppTheme.themeType;
    if (themeType == ThemeType.light) return CustomTheme.lightCustomTheme;
    return CustomTheme.darkCustomTheme;
  }

  /// -------------------------- Light Theme  -------------------------------------------- ///
  static final ThemeData lightTheme = ThemeData(
    /// Brightness
    brightness: Brightness.light,

    /// Primary Color
    primaryColor: const Color(0xff3C4EC5),
    scaffoldBackgroundColor: const Color(0xffffffff),
    canvasColor: Colors.transparent,

    /// AppBar Theme
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffffffff),
        iconTheme: IconThemeData(color: Color(0xff495057)),
        actionsIconTheme: IconThemeData(color: Color(0xff495057))),

    /// Card Theme
    cardTheme: const CardTheme(color: Color(0xfff0f0f0)),
    cardColor: const Color(0xfff0f0f0),

    textTheme: TextTheme(
        titleLarge: GoogleFonts.aBeeZee(), bodyLarge: GoogleFonts.abel()),

    /// Floating Action Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: const Color(0xff3C4EC5),
        splashColor: const Color(0xffeeeeee).withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: const Color(0xff3C4EC5),
        hoverColor: const Color(0xff3C4EC5),
        foregroundColor: const Color(0xffeeeeee)),

    /// Divider Theme
    dividerTheme:
        const DividerThemeData(color: Color(0xffe8e8e8), thickness: 1),
    dividerColor: const Color(0xffe8e8e8),

    /// Bottom AppBar Theme
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color(0xffeeeeee), elevation: 2),

    /// Tab bar Theme
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Color(0xff3d63ff),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xff3d63ff), width: 2.0),
      ),
    ),

    /// CheckBox theme
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(const Color(0xffeeeeee)),
      fillColor: MaterialStateProperty.all(const Color(0xff3C4EC5)),
    ),

    /// Radio theme
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xff3C4EC5)),
    ),

    ///Switch Theme
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.resolveWith((state) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
          MaterialState.selected,
        };
        if (state.any(interactiveStates.contains)) {
          return const Color(0xffabb3ea);
        }
        return null;
      }),
      thumbColor: MaterialStateProperty.resolveWith((state) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
          MaterialState.selected,
        };
        if (state.any(interactiveStates.contains)) {
          return const Color(0xff3C4EC5);
        }
        return null;
      }),
    ),

    /// Slider Theme
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xff3d63ff),
      inactiveTrackColor: const Color(0xff3d63ff).withAlpha(140),
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: const Color(0xff3d63ff),
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Color(0xffeeeeee),
      ),
    ),

    /// Other Colors
    splashColor: Colors.white.withAlpha(100),
    indicatorColor: const Color(0xffeeeeee),
    highlightColor: const Color(0xffeeeeee),
    colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff3C4EC5), brightness: Brightness.light)
        .copyWith(background: const Color(0xffffffff))
        .copyWith(error: const Color(0xfff0323c)),
  );

  /// -------------------------- Dark Theme  -------------------------------------------- ///
  static final ThemeData darkTheme = ThemeData(
    /// Brightness
    brightness: Brightness.dark,

    /// Primary Color
    primaryColor: const Color(0xff069DEF),

    /// Scaffold and Background color
    scaffoldBackgroundColor: const Color(0xff161616),
    canvasColor: Colors.transparent,

    /// AppBar Theme
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff161616)),

    /// Card Theme
    cardTheme: const CardTheme(color: Color(0xff222327)),
    cardColor: const Color(0xff222327),

    /// Input (Text-Field) Theme
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Color(0xff069DEF)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1, color: Colors.white70),
      ),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.white70)),
    ),

    /// Divider Color
    dividerTheme:
        const DividerThemeData(color: Color(0xff363636), thickness: 1),
    dividerColor: const Color(0xff363636),

    /// Floating Action Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: const Color(0xff069DEF),
        splashColor: Colors.white.withAlpha(100),
        highlightElevation: 8,
        elevation: 4,
        focusColor: const Color(0xff069DEF),
        hoverColor: const Color(0xff069DEF),
        foregroundColor: Colors.white),

    /// Bottom AppBar Theme
    bottomAppBarTheme:
        const BottomAppBarTheme(color: Color(0xff464c52), elevation: 2),

    /// Tab bar Theme
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff495057),
      labelColor: Color(0xff069DEF),
      indicatorSize: TabBarIndicatorSize.label,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: Color(0xff069DEF), width: 2.0),
      ),
    ),

    ///Switch Theme
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.resolveWith((state) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
          MaterialState.selected,
        };
        if (state.any(interactiveStates.contains)) {
          return const Color(0xffabb3ea);
        }
        return null;
      }),
      thumbColor: MaterialStateProperty.resolveWith((state) {
        const Set<MaterialState> interactiveStates = <MaterialState>{
          MaterialState.pressed,
          MaterialState.hovered,
          MaterialState.focused,
          MaterialState.selected,
        };
        if (state.any(interactiveStates.contains)) {
          return const Color(0xff3C4EC5);
        }
        return null;
      }),
    ),

    /// Slider Theme
    sliderTheme: SliderThemeData(
      activeTrackColor: const Color(0xff069DEF),
      inactiveTrackColor: const Color(0xff069DEF).withAlpha(100),
      trackShape: const RoundedRectSliderTrackShape(),
      trackHeight: 4.0,
      thumbColor: const Color(0xff069DEF),
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
      tickMarkShape: const RoundSliderTickMarkShape(),
      inactiveTickMarkColor: Colors.red[100],
      valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
      valueIndicatorTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),

    ///Other Color
    indicatorColor: Colors.white,
    disabledColor: const Color(0xffa3a3a3),
    highlightColor: Colors.white.withAlpha(28),
    splashColor: Colors.white.withAlpha(56),
    colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff069DEF), brightness: Brightness.dark)
        .copyWith(background: const Color(0xff161616))
        .copyWith(error: Colors.orange),
  );

  static ThemeData createThemeM3(ThemeType themeType, Color seedColor) {
    if (themeType == ThemeType.light) {
      return lightTheme.copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: seedColor, brightness: Brightness.light));
    }
    return darkTheme.copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: seedColor,
            brightness: Brightness.dark,
            onBackground: const Color(0xFFDAD9CA)));
  }

  static ThemeData createTheme(ColorScheme colorScheme) {
    if (themeType != ThemeType.light) {
      return darkTheme.copyWith(
        colorScheme: colorScheme,
      );
    }
    return lightTheme.copyWith(colorScheme: colorScheme);
  }

  static ThemeData getNFTTheme() {
    if (themeType == ThemeType.light) {
      return lightTheme.copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff232245),
              brightness: Brightness.light));
    } else {
      return darkTheme.copyWith(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xff232245),
              brightness: Brightness.dark,
              onBackground: const Color(0xFFDAD9CA)));
    }
    // return createTheme(ColorScheme.fromSeed(seedColor: Color(0xff232245)));
  }

  static ThemeData getRentalServiceTheme() {
    return createThemeM3(themeType, const Color(0xff2e87a6));
  }

  static resetThemeData() {
    nftTheme = getNFTTheme();

    estateTheme = AppTheme.themeType == ThemeType.light
        ? estateLightTheme
        : estateDarkTheme;

    shoppingTheme = AppTheme.themeType == ThemeType.light
        ? shoppingLightTheme
        : shoppingDarkTheme;

    cookifyTheme = AppTheme.themeType == ThemeType.light
        ? cookifyLightTheme
        : cookifyDarkTheme;

    datingTheme = AppTheme.themeType == ThemeType.light
        ? datingLightTheme
        : datingDarkTheme;

    homemadeTheme = AppTheme.themeType == ThemeType.light
        ? homemadeLightTheme
        : homemadeDarkTheme;

    learningTheme = AppTheme.themeType == ThemeType.light
        ? learningLightTheme
        : learningDarkTheme;

    plantTheme = AppTheme.plantTheme == ThemeType.light
        ? plantLightTheme
        : plantDarkTheme;

    shoppingManagerTheme = getShoppingManagerTheme();
    rentalServiceTheme = getRentalServiceTheme();
  }
}
