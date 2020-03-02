import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:notas_app/app/modules/nota/nota_widget.dart';


main() {
  testWidgets('NotaWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(NotaWidget()));
    final textFinder = find.text('Nota');
    expect(textFinder, findsOneWidget);
  });
}
