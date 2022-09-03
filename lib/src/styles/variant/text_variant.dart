import 'package:flutter/material.dart';

import '../fonts/body_font.dart';
import '../fonts/caption_font.dart';
import '../fonts/display_font.dart';
import '../fonts/headline_font.dart';
import '../fonts/subheader_font.dart';
import '../fonts/title_font.dart';

enum TextVariantFont {
  displayHeavy,
  displayLight,
  headlineHeavy,
  headlineLight,
  titleHeavy,
  titleLight,
  subheaderHeavy,
  subheaderLight,
  bodyHeavy,
  bodyLigth,
  captionHeavy,
  captionLight,
}

extension TextVariant on TextVariantFont {
  TextStyle get getFont {
    switch (this) {
      case TextVariantFont.displayHeavy:
        return const DisplayHeavyFont();
      case TextVariantFont.displayLight:
        return const DisplayLightFont();
      case TextVariantFont.headlineHeavy:
        return const HeadlineHeavyFont();
      case TextVariantFont.headlineLight:
        return const HeadlineLightFont();
      case TextVariantFont.titleHeavy:
        return const TitleHeavyFont();
      case TextVariantFont.titleLight:
        return const TitleLightFont();
      case TextVariantFont.subheaderHeavy:
        return const SubheaderHeavyFont();
      case TextVariantFont.subheaderLight:
        return const SubheaderLightFont();
      case TextVariantFont.bodyHeavy:
        return const BodyHeavyFont();
      case TextVariantFont.bodyLigth:
        return const BodyLigthFont();
      case TextVariantFont.captionHeavy:
        return const CaptionHeavyFont();
      case TextVariantFont.captionLight:
        return const CaptionLightFont();
    }
  }
}
