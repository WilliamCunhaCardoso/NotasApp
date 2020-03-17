import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/noteStyles.dart';

import '../nota_controller.dart';

class NotaBottomSheetWidget extends StatefulWidget {
  final DateTime ultimaAlteracao;

  const NotaBottomSheetWidget({Key key, this.ultimaAlteracao}) : super(key: key);
  
  @override
  _NotaBottomSheetWidgetState createState() => _NotaBottomSheetWidgetState();
}

class _NotaBottomSheetWidgetState extends State<NotaBottomSheetWidget> {
  var notaController = Modular.get<NotaController>();
  var db = MyDatabase.instance;
  @override
  Widget build(BuildContext context) {
    return Observer(
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
                    checked: false,
                  ),
                );
                notaController.cleanControllers();
                Modular.to.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
