import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/app_module.dart';
import 'src/app_widget.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.red,
        child: Center(
          child: Text(
            details.exception.toString().replaceAll('Exception: ', ''),
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  };
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
