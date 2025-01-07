import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemini_chat/app/core/components/colors/colors_gemini.dart';
import 'package:gemini_chat/app/core/components/font/text_styles.dart';

const CupertinoThemeData lightTheme = CupertinoThemeData();

const CupertinoThemeData darkTheme = CupertinoThemeData(
  primaryColor: primaryColor,
  primaryContrastingColor: primaryContrastingColor,
  brightness: Brightness.dark,
  textTheme: CupertinoTextThemeData(
    textStyle: textStyleDefault,
  ),
  scaffoldBackgroundColor: primaryContrastingColor,
  applyThemeToAll: true,
);
