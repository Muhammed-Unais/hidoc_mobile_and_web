import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData myTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: const Color(0xff00bcd4),
    primaryColorLight: const Color(0xffccf9ff),
    primaryColorDark: const Color(0xff008799),
    canvasColor: const Color(0xfffafafa),
    scaffoldBackgroundColor: Colors.white,
    cardColor: const Color(0xffffffff),
    dividerColor: const Color(0x1f000000),
    highlightColor: const Color(0x66bcbcbc),
    splashColor: const Color(0x66c8c8c8),
    unselectedWidgetColor: const Color(0x8a000000),
    disabledColor: const Color(0x61000000),
    secondaryHeaderColor: const Color(0xffe5fcff),
    dialogBackgroundColor: const Color(0xffffffff),
    indicatorColor: const Color(0xff00e1ff),
    hintColor: const Color(0x8a000000),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Color(0xff000000), width: 0, style: BorderStyle.none),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: TextStyle(
          fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      titleLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      titleSmall: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 14, color: Colors.black),
      bodySmall: TextStyle(fontSize: 12, color: Colors.black),
      labelLarge: TextStyle(fontSize: 16),
      labelMedium: TextStyle(fontSize: 14),
      labelSmall: TextStyle(fontSize: 12),
    ),
    primaryTextTheme: const TextTheme(
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xff00bcd4),
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: Color(0xff00bcd4),
        decoration: TextDecoration.underline,
        decorationColor: Color(0xff00bcd4),
        fontStyle: FontStyle.italic
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: Color(0xff00bcd4),
        decoration: TextDecoration.underline,
        decorationColor: Color(0xff00bcd4),
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        color: Color(0xff00bcd4),
        decoration: TextDecoration.underline
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        color:Colors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        color:Colors.white,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        color:Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      size: 24,
      color: Colors.white,
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      contentTextStyle: TextStyle(fontSize: 16),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff00b4cc);
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff00b4cc);
        }
        return null;
      }),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff00b4cc);
        }
        return null;
      }),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return const Color(0xff00b4cc);
        }
        return null;
      }),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xffffffff)),
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.cyan)
        .copyWith(background: const Color(0xff99f3ff))
        .copyWith(error: const Color(0xffd32f2f))
        .copyWith(secondary: const Color(0xffdbeef1)),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff4285f4),
      selectionColor: Color(0xff99f3ff),
      selectionHandleColor: Color(0xff66edff),
    ),
  );
}
