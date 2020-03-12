import 'package:flutter/material.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';

class OpenNote extends StatelessWidget {
  final Nota nota;

  const OpenNote({Key key, this.nota}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nota.titulo)),
      body: Center(child: Text(nota.conteudo)),
      bottomSheet: BottomAppBar(child: Text(nota.ultimaAlteracao.toString()),),
    );
  }
}
