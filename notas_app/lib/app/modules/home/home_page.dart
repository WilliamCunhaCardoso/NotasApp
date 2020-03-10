import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  var db = MyDatabase.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: StreamBuilder<List<Nota>>(
          stream: db.notaDAO.listarTodos(),
          builder: (context, snapshot) {
            List<Nota> nota = snapshot.data;
            if (!snapshot.hasData) return Container(child: Text('Sem notas!! Adicione uma xD'),);
            return ListView.builder(
              itemCount: nota.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(nota[index].titulo),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Modular.to.pushNamed('/nota'), // todo implement push named
      ),
    );
  }
}
