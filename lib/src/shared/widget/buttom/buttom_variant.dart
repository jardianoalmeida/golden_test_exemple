import 'package:flutter/material.dart';

enum ButtomVariant { primary, second, tertiary }

extension VariantButtom on ButtomVariant {
  Color getColor() {
    switch (this) {
      case ButtomVariant.primary:
        return const Color(0xff175EA8);
      case ButtomVariant.second:
        return Colors.white;
      case ButtomVariant.tertiary:
        return Colors.white;
    }
  }

  Color getColorText() {
    switch (this) {
      case ButtomVariant.primary:
        return Colors.white;
      case ButtomVariant.second:
        return const Color(0xff454545);
      case ButtomVariant.tertiary:
        return const Color(0xff175EA8);
    }
  }

  Color getColorBorder() {
    switch (this) {
      case ButtomVariant.primary:
        return Colors.transparent;
      case ButtomVariant.second:
        return const Color(0xff454545);
      case ButtomVariant.tertiary:
        return Colors.transparent;
    }
  }
}
