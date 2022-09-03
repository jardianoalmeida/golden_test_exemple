import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test_exemple/src/modules/login/presentation/pages/login_page.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('Login Page - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        // const Device(
        //     name: 'custom_phone', size: Size(400, 600), textScale: 1.5),
      ])
      ..addScenario(
        name: 'Testing the Login Page',
        widget: const LoginPage(),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'Login Page');
  });
}
