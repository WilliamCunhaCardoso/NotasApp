import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          // todo: Lista vertical com as notas criadas
        ],
      ),
      bottomSheet: SolidBottomSheet(
        headerBar: Icon(Icons.add),
        body: Expanded(
          child: Center(
            // todo: pagina de criação de nota
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
