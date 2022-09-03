import 'dart:ui';

import 'package:golden_test_exemple/src/modules/splash/presentation/pages/splash_page.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('Splash Page - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletLandscape,
        const Device(
          name: 'figma_phone',
          size: Size(375, 812),
          textScale: 1.5,
        ),
      ])
      ..addScenario(
        name: 'Testing the Splash Page',
        widget: const SplashPage(),
      );

    //act
    await tester.pumpDeviceBuilder(builder);

    //assert
    await screenMatchesGolden(tester, 'Splash Page');
  });
}
