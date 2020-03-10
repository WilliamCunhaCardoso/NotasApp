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
      builder: (BuildContext context) => Form(
        key: formKey,
        child: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              FlatButton(
                child: Text('Salvar'),
                onPressed: () {
                  if (formKey.currentState.validate()) {
                    print('submetido '+notaController.tituloController.text);
                  }
                },
                // onPressed: () =>
                // db.notaDAO.addNota(
                //   Nota(
                //     conteudo: notaController.texto,
                //     id: null,
                //     titulo: notaController.tituloController.text,
                //     ultimaAlteracao: notaController.ultimaAlteracao,
                //   ),
                // ),
              )
            ],
          ),
          body: Container(
            child: TextFormField(
              controller: notaController.tituloController,
              style: titleStyle,
              decoration: titleDecoration,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onFieldSubmitted: (value) => notaController.tituloController.text = value,
            ), // todo: implement body text note
          ),
          bottomSheet: Text(
            notaController.ultimaAlteracao.toString(),
            style: dataStyle,
          ),
        ),
      ),
    );
  }
}
