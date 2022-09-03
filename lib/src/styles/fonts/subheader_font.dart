import '../../tokens/app_tokens.dart';
import 'package:flutter/material.dart';

 
// Subheader FONT
class SubheaderHeavyFont extends TextStyle {
  const SubheaderHeavyFont({
    double fontSize = 16,
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

class SubheaderLightFont extends TextStyle {
  const SubheaderLightFont({
    double fontSize = 16,
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
