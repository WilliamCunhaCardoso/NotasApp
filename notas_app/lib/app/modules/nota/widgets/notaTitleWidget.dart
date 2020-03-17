import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/shared/constants/noteStyles.dart';

import '../nota_controller.dart';

class NotaTitleWidget extends StatefulWidget {
  final String title;

  const NotaTitleWidget({Key key, this.title}) : super(key: key);

  @override
  _NotaTitleWidgetState createState() => _NotaTitleWidgetState();
}

class _NotaTitleWidgetState extends State<NotaTitleWidget> {
  var notaController = Modular.get<NotaController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => TextField(
        controller: notaController.tituloController,
        style: titleStyle,
        decoration: titledct(widget.title),
        onChanged: (_) => notaController.setUltimaAlteracao(DateTime.now()),
      ),
    );
  }
}
