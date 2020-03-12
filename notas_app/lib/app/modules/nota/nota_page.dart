import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/noteStyles.dart';

import 'nota_controller.dart';

class NotaPage extends StatefulWidget {
  final String title;
  const NotaPage({Key key, this.title = "Nota"}) : super(key: key);

  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  //* Instanciadores
  var notaController = Modular.get<NotaController>();
  var db = MyDatabase.instance;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Form(
        key: formKey,
        child: Scaffold(
          appBar: AppBar(
            title: TextField(
              controller: notaController.tituloController,
              style: titleStyle,
              decoration: titleDecoration,
              onChanged: (_) =>
                  notaController.setUltimaAlteracao(DateTime.now()),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    controller: notaController.conteudoController,
                    style: bodyStyle,
                    decoration: bodyDecoration,
                    onChanged: (_) =>
                        notaController.setUltimaAlteracao(DateTime.now()),
                  ),
                ),
              ],
            ),
          ),
          bottomSheet: Observer(
            builder: (_) => BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    //todo implement adicionar: lista, link, etc..
                    child: Icon(Icons.add),
                    onPressed: () {},
                  ),
                  Expanded(
                    //! Data não está atualizando
                    flex: 1,
                    child: Text(
                      notaController.formattedDate,
                      style: dataStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton(
                    child: Icon(Icons.check),
                    onPressed: () {
                      db.notaDAO.addNota(
                        Nota(
                          conteudo: notaController.conteudoController.text,
                          id: null,
                          titulo: notaController.tituloController.text,
                          ultimaAlteracao: notaController.ultimaAlteracao,
                        ),
                      );
                      notaController.tituloController.text = '';
                      notaController.conteudoController.text = '';                      
                      Modular.to.pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
