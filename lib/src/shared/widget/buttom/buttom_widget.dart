 import 'package:flutter/material.dart';

import 'buttom_variant.dart';

class ButtomWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String data;
  final ButtomVariant style;
  const ButtomWidget(
    this.data, {
    Key? key,
    this.onPressed,
    this.style = ButtomVariant.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0.0),
        backgroundColor: MaterialStateProperty.all(style.getColor()),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: style.getColorBorder()),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        data,
        style: TextStyle(
          color: style.getColorText(),
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
