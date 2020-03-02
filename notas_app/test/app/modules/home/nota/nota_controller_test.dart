import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:notas_app/app/modules/home/home_module.dart';
import 'package:notas_app/app/modules/nota/nota_controller.dart';

void main() {
  initModule(HomeModule());
  NotaController nota;

  setUp(() {
    nota = HomeModule.to.get<NotaController>();
  });

  group('NotaController Test', () {
    test("First Test", () {
      expect(nota, isInstanceOf<NotaController>());
    });

    test("Set Value", () {
      expect(nota.value, equals(0));
      nota.increment();
      expect(nota.value, equals(1));
    });
  });
}
