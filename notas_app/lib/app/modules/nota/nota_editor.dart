import 'package:flutter/material.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';

import 'widgets/notaBodyWidget.dart';
import 'widgets/notaBottomSheet.dart';
import 'widgets/notaTitleWidget.dart';

class NotaEditorPage extends StatefulWidget {
  final String title;
  final Nota nota;

  const NotaEditorPage({Key key, this.title = "Nota", this.nota}) : super(key: key);

  @override
  _NotaEditorPageState createState() => _NotaEditorPageState();
}

class _NotaEditorPageState extends State<NotaEditorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: NotaTitleWidget(title: widget.nota.titulo)),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotaBodyWidget(conteudo: widget.nota.conteudo)),
        bottomSheet: NotaBottomSheetWidget(
            ultimaAlteracao: widget.nota.ultimaAlteracao));
  }
}
