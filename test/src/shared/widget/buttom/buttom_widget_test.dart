import 'package:golden_test_exemple/src/shared/widget/buttom/buttom_variant.dart';
import 'package:golden_test_exemple/src/shared/widget/buttom/buttom_widget.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens('Buttom Widget - Golden Test', (tester) async {
    //arrange
    await loadAppFonts();
    final builder = GoldenBuilder.column()
      ..addScenario(
        'test primary button',
        ButtomWidget(
          'Primary Buttom',
          onPressed: () {},
          style: ButtomVariant.primary,
        ),
      )
      ..addScenario(
        'test second button',
        ButtomWidget(
          'Second Buttom',
          onPressed: () {},
          style: ButtomVariant.second,
        ),
      )
      ..addScenario(
        'test tertiary button',
        ButtomWidget(
          'Tertiary Buttom',
          onPressed: () {},
          style: ButtomVariant.tertiary,
        ),
      );

    //act
    await tester.pumpWidgetBuilder(builder.build());

    //assert
    await screenMatchesGolden(tester, 'buttom_widget');
  });
}
