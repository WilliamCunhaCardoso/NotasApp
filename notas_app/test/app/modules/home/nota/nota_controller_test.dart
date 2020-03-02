import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:notas_app/app/modules/home/nota/nota_controller.dart';
import 'package:notas_app/app/modules/home/home_module.dart';

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
