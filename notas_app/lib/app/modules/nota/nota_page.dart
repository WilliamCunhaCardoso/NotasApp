import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';

import 'nota_controller.dart';

class NotaPage extends StatefulWidget {
  final String title;
  const NotaPage({Key key, this.title = "Nota"}) : super(key: key);

  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  var notaController = Modular.get<NotaController>();
  var db = MyDatabase.instance;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(notaController.titulo), // todo: set title var
          actions: <Widget>[
            FlatButton(
                onPressed: () => db.notaDAO.addNota(
                      Nota(
                        conteudo: notaController.texto,
                        id: null,
                        titulo: notaController.titulo,
                        ultimaAlteracao: notaController.ultimaAlteracao,
                      ),
                    ),
                child: Text('Salvar'))
          ],
        ),
        body: Container(
          child: Text(notaController.texto),
        ), // todo: implement body text note
        bottomSheet: Text(
          notaController.ultimaAlteracao.toString(),
        ), // todo: set ultima edicao
      ),
    );
  }
}
