import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/shared/constants/noteStyles.dart';

import '../nota_controller.dart';

class NotaBodyWidget extends StatefulWidget {
  @override
  _NotaBodyWidgetState createState() => _NotaBodyWidgetState();
}

class _NotaBodyWidgetState extends State<NotaBodyWidget> {
  var notaController = Modular.get<NotaController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
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
    );
  }
}
