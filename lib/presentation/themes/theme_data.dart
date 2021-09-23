import 'package:flutter/material.dart';

TextTheme textTheme = TextTheme(
  headline1: TextStyle(fontSize: 24),
  headline2: TextStyle(fontSize: 20),
  headline3: TextStyle(fontSize: 18),
  headline4: TextStyle(fontSize: 16),
  caption: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
  bodyText1: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, height: 2),
  bodyText2: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
  subtitle1: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
);

ColorScheme colorScheme = ColorScheme.light(
  secondary: Colors.black54,
  primary: Colors.black87,
);

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.white,
      width: 10,
    ),
  ),
  isDense: true,
  fillColor: Colors.grey,
  filled: true,
);

AppBarTheme appBarTheme = AppBarTheme(elevation: 0, color: Colors.black87);

ThemeData theme = ThemeData(
  textTheme: textTheme,
  colorScheme: colorScheme,
  brightness: Brightness.light,
  appBarTheme: appBarTheme,
  inputDecorationTheme: inputDecorationTheme,
);


// ! From Summarator
// final themeData = ThemeData(
//   fontFamily: FontFamilyConstants.ttCommons,
//   primaryColor: Blue.teal,
//   accentColor: Red.pinkyBlush,
//   buttonColor: Blue.teal,
//   scrollbarTheme: ScrollbarThemeData(
//     thumbColor: MaterialStateProperty.all(Red.pinkyBlush),
//     radius: Radius.circular(5),
//     thickness: MaterialStateProperty.all(wdp(3)),
//   )
// );
