import '../../tokens/app_tokens.dart';
import 'package:flutter/material.dart';
 
// Headline FONT
class HeadlineHeavyFont extends TextStyle {
  const HeadlineHeavyFont({
    double fontSize: 24,
    Color color = AppTokens.colorNeutralDarker,
    TextDecoration? decoration,
    FontStyle fontStyle: FontStyle.normal,
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

class HeadlineLightFont extends TextStyle {
  const HeadlineLightFont({
    double fontSize: 24,
    Color color = AppTokens.colorNeutralDarker,
    TextDecoration? decoration,
    FontStyle fontStyle: FontStyle.normal,
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
