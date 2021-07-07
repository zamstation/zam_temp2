import 'package:flutter/material.dart';

class ZamBmiCalculatorThemeManager {
  static const primaryColor = Color(0xFF6391FF);
  static const accentColor = Color(0xFF7463FF);
  static const backgroundColor = Color(0xFFE0E4EF);

  const ZamBmiCalculatorThemeManager();

  ThemeData getDefaultLightTheme() {
    ///
    /// Colors
    ///
    var basicTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: primaryColor,
      accentColor: accentColor,
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
    );

    ///
    /// Text Theme
    ///
    final basicTextTheme =
        basicTheme.textTheme.merge(Typography.englishLike2018);
    final textTheme = basicTextTheme
        .apply(
          fontFamily: 'Segoe UI',
        )
        .copyWith(
          headline2: basicTextTheme.headline2?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          headline4: basicTextTheme.headline4?.copyWith(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          headline5: basicTextTheme.headline5?.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: basicTextTheme.headline5?.color?.withOpacity(0.3),
            letterSpacing: 1.6,
          ),
          headline6: basicTextTheme.headline6?.copyWith(
            fontFamily: 'Roboto light',
            fontSize: 20.0,
            letterSpacing: 1.6,
          ),
          button: basicTextTheme.button?.copyWith(
            fontFamily: 'Roboto',
          ),
        );
    basicTheme = basicTheme.copyWith(
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      accentTextTheme: textTheme,
    );

    ///
    /// Button Theme
    ///
    final buttonTheme = basicTheme.buttonTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
    basicTheme = basicTheme.copyWith(
      buttonTheme: buttonTheme,
    );

    ///
    /// Card Theme
    ///
    final cardTheme = basicTheme.cardTheme.copyWith(
      color: Color(0xFFF0F4FF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
    basicTheme = basicTheme.copyWith(cardTheme: cardTheme);

    return basicTheme;
  }

  ThemeData getDefaultDarkTheme() {
    var basicTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      accentColor: accentColor,
      // backgroundColor: Color(0xFF0c0d30),
      // scaffoldBackgroundColor: Color(0xFF0c0d30),
    );

    ///
    /// Text Theme
    ///
    final basicTextTheme =
        basicTheme.textTheme.merge(Typography.englishLike2018);
    final textTheme = basicTextTheme
        .apply(
          fontFamily: 'Segoe UI',
        )
        .copyWith(
          headline2: basicTextTheme.headline2?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          headline4: basicTextTheme.headline4?.copyWith(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          headline5: basicTextTheme.headline5?.copyWith(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: basicTextTheme.headline5?.color?.withOpacity(0.3),
            letterSpacing: 1.6,
          ),
          headline6: basicTextTheme.headline6?.copyWith(
            fontFamily: 'Roboto light',
            fontSize: 20.0,
            letterSpacing: 1.6,
          ),
          bodyText2: basicTextTheme.bodyText2?.copyWith(
            fontFamily: 'Roboto light',
            fontSize: 14.0,
            // fontWeight: FontWeight.w100,
          ),
          button: basicTextTheme.button?.copyWith(
            fontFamily: 'Roboto',
          ),
        );
    basicTheme = basicTheme.copyWith(
      textTheme: textTheme,
      primaryTextTheme: textTheme,
      accentTextTheme: textTheme,
    );

    ///
    /// Card Theme
    ///
    final cardTheme = basicTheme.cardTheme.copyWith(
      // color: Color(0xFF436694),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
    basicTheme = basicTheme.copyWith(cardTheme: cardTheme);

    return basicTheme;
  }
}
