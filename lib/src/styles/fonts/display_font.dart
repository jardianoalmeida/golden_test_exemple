import '../../tokens/app_tokens.dart';
import 'package:flutter/material.dart';

class DisplayHeavyFont extends TextStyle {
  const DisplayHeavyFont({
    double fontSize = 36,
    Color color = AppTokens.colorNeutralDarker,
    TextDecoration? decoration,
    FontStyle fontStyle = FontStyle.normal,
  }) : super(
          // const
          fontFamily: 'CircularXX',
          fontWeight: FontWeight.w700,
          // params
          fontSize: fontSize,
          color: color,
          decoration: decoration,
          fontStyle: fontStyle,
        );
}

class DisplayLightFont extends TextStyle {
  const DisplayLightFont({
    double fontSize = 36,
    Color color = AppTokens.colorNeutralDarker,
    TextDecoration? decoration,
    FontStyle fontStyle = FontStyle.normal,
  }) : super(
          // const
          fontFamily: 'CircularXX',
          fontWeight: FontWeight.w400,
          // params
          fontSize: fontSize,
          color: color,
          decoration: decoration,
          fontStyle: fontStyle,
        );
}
