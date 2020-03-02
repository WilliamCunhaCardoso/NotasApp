import 'package:mobx/mobx.dart';

part 'nota_controller.g.dart';

class NotaController = _NotaBase with _$NotaController;

abstract class _NotaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
