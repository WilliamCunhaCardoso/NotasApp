import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/homeConstants.dart';
import 'home_controller.dart';
import 'widgets/homeBodyWidget.dart';
import 'widgets/homeFloat.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  var db = MyDatabase.instance;
  var homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FluNote', style: appBarStyle),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
                child: Icon(Icons.mode_edit),
                onPressed: () => db.notaDAO.deleteNotas)
          ],
        ),
        body: HomeBodyWidget(),
        floatingActionButton: HomeFloatButtonWidget());
  }
}
