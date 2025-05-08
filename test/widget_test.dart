import 'package:eco_market/app/eco_market-main-application.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const EcoMarketMainApplication(language: 'fr'));
  });
}
