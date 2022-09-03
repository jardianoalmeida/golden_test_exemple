import '../../tokens/app_tokens.dart';
import 'package:flutter/material.dart';

// Title FONT
class TitleHeavyFont extends TextStyle {
  const TitleHeavyFont({
    double fontSize = 20,
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

class TitleLightFont extends TextStyle {
  const TitleLightFont({
    double fontSize = 20,
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
