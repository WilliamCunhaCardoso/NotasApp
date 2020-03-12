import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/homeConstants.dart';
import 'package:notas_app/app/shared/constants/noteStyles.dart';
import 'home_controller.dart';

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
        title: Text('FluNote', style: appBarStyle,),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.mode_edit),
            onPressed: () => homeController.changeEditMode(),
          )
        ],
      ),
      body: StreamBuilder<List<Nota>>(
          stream: db.notaDAO.listarTodos(),
          builder: (context, snapshot) {
            List<Nota> nota = snapshot.data;
            if (!snapshot.hasData)
              return Container(
                child: Text('Sem notas!! Adicione uma xD'),
              );
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              itemCount: nota.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () =>
                    Modular.to.pushNamed('/open', arguments: nota[index]),
                child: Card(
                  elevation: 4,
                  child: Observer(
                    builder: (_) => ListTile(
                      title: Text(nota[index].titulo, style: listTileTitle,),
                      subtitle: Text(nota[index].conteudo, style: listTileSubtitle,),
                      trailing: homeController.editMode
                          ? FlatButton(
                              onPressed: () => db.notaDAO.rmNota(nota[index]),
                              child: Icon(Icons.delete_outline),
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Menu de ações',
        child: Icon(Icons.add),
        onPressed: () => Modular.to.pushNamed('/nota'),
      ),
    );
  }
}
