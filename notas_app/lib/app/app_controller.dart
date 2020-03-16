import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  bool darkMode = false;

  @action
  void changeTheme() => darkMode ? darkMode = false : darkMode = true;
}
