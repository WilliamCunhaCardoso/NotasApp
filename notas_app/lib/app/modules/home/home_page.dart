//* Packages
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/homeConstants.dart';
//*Controler
import 'home_controller.dart';
//* Widgets
import 'widgets/homeBodyWidget.dart';
import 'widgets/homeFloat.dart';
import 'widgets/notaBottomSheetWidget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

var db = MyDatabase.instance;
var homeController = Modular.get<HomeController>();

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('FluNote', style: appBarStyle),
          centerTitle: true,
          actions: <Widget>[
            //* Caso o modo de edição seja verdadeiro, irá exibir o icone da lixeira e performar a ação de remover as notas marcadas. Caso falso, não irá exibir nenhum icone
            homeController.editMode
                ? FlatButton(
                    onPressed: () => db.notaDAO.deleteNotas(),
                    child: Icon(Icons.delete_outline))
                : Container()
          ],
        ),
        body: HomeBodyWidget(),
        floatingActionButton: HomeFloatButtonWidget(),
        //todo: remover sheet e implantar um botao float que o numero acresce e decresce ao marcar notas para remover, e ao ser tocado performar ação de remover
        bottomSheet: HomeBottomSheetWidget(),
      ),
    );
  }
}
