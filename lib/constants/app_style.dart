import 'colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'font-family.dart';

class RegularAppStyles {
  static TextStyle regularText(
      {double? height,
        Color? color,
        double? wordSpacing,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.blueJaySignIn,
      height: height,
      wordSpacing: 4,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class MediumAppStyles {
  static TextStyle mediumText(
      {double? height,
        Color? color,
        double? wordSpacing,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      wordSpacing: 4,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.yourHobbyThunder,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class SemiBoldAppStyle {
  static TextStyle semiBoldText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.blueJaySignIn,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class MediumAppStyle {
  static TextStyle mediumText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.blueJaySignIn,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class BoldAppStyle {
  static TextStyle boldText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.blueJaySignIn,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}

class LightAppStyle {
  static TextStyle lightText(
      {double? height,
        Color? color,
        bool isUnderline = false,
        double? fontSize,
        FontWeight? fontWeight,
        String? fontFamily}) {
    return TextStyle(
      fontFamily: fontFamily ?? FontFamily.bold,
      fontSize: fontSize ?? 12,
      fontWeight: fontWeight ?? FontWeight.w500,
      // color: color ?? ColorsConstants.blueJaySignIn,
      height: height,
      decoration: isUnderline ? TextDecoration.underline : TextDecoration.none,
    );
  }
}
