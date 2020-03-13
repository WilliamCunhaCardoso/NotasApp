import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool editMode = false;

  @action
  void changeEditMode() {
    editMode ? editMode = false : editMode = true;
  }

  //todo create delete list
  // void checkNote(){
    
  // }
}
