//* Packages
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
//*Controler
import 'home_controller.dart';
//* Widgets
import 'widgets/homeBodyWidget.dart';
import 'widgets/homeFloat.dart';

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
            textTheme: ThemeData().appBarTheme.textTheme,
            title: Text('FluNote'),
            centerTitle: true),
        body: HomeBodyWidget(),
        floatingActionButton: HomeFloatButtonWidget(),
      ),
    );
  }
}
