import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/shared/constants/homeConstants.dart';

import '../home_controller.dart';

var db = MyDatabase.instance;
var homeController = Modular.get<HomeController>();

class HomeBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Nota>>(
      stream: db.notaDAO.listarTodos(),
      builder: (context, snapshot) {
        List<Nota> nota = snapshot.data;
        //* Verificação de caso não tenha nenhuma nota
        if (!snapshot.hasData)
          return Container(child: Text('Sem notas!! Adicione uma xD'));
        //* Caso tenha notas, a lista é construída
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
          itemCount: nota.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => Modular.to.pushNamed('/open', arguments: nota[index]),
            child: Card(
              elevation: 4,
              child: Observer(
                builder: (_) => ListTile(
                  title: Text(
                    nota[index].titulo,
                    style: listTileTitle,
                  ),
                  subtitle: Text(
                    nota[index].conteudo,
                    style: listTileSubtitle,
                  ),
                  trailing: homeController.editMode
                      ? Checkbox(
                          value: nota[index].checked,
                          onChanged: (value) => db.notaDAO
                              .upNota(nota[index].copyWith(checked: value)))
                      : null,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
