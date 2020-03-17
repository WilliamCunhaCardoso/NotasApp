import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unicorndial/unicorndial.dart';

import 'package:notas_app/app/data/db/mydatabase.dart';
import '../../../app_controller.dart';
import '../home_controller.dart';

var homeController = Modular.get<HomeController>();
var appController = Modular.get<AppController>();
var db = MyDatabase.instance;

class HomeFloatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //* criando a variável para receber a lista de botões
    var childUnicornButtons = List<UnicornButton>();

    //* Lista de Botões
    //* Botão de adicionar nota
    childUnicornButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: 'add note',
            tooltip: 'Adicionar nota',
            child: Icon(Icons.add),
            onPressed: () => Modular.to.pushNamed('/nota'),
            mini: true)));

    //* Botão de editar nota
    childUnicornButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: 'edit note',
            tooltip: 'Editar notas',
            child: Icon(Icons.edit),
            onPressed: () => homeController.changeEditMode(),
            mini: true)));

    //* Botão alterar tema
    childUnicornButtons.add(UnicornButton(
        currentButton: FloatingActionButton(
            heroTag: 'change theme mode',
            tooltip: 'Dark/Light Theme',
            child: Icon(Icons.lightbulb_outline),
            onPressed: () => appController.changeTheme(),
            mini: true)));

    //* retorno do widget
    //* Caso esteja em modo de edição, irá retornar uma Row com dois float buttons para performar ação de remover notas e sair do modo de edição. Caso não esteja em modo de edição, estará retornando Unicorn Dial
    return Observer(
      builder: (_) => homeController.editMode
          ? Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      db.notaDAO.deleteNotas();
                      homeController.changeEditMode();
                    },
                    child: Icon(Icons.delete_outline),
                    backgroundColor: Colors.red,
                  ),
                  FloatingActionButton(
                    onPressed: () => homeController.changeEditMode(),
                    child: Icon(Icons.cancel),
                  ),
                ],
              ),
            )
          : UnicornDialer(
              backgroundColor: Colors.transparent,
              parentButton: Icon(Icons.menu),
              childButtons: childUnicornButtons),
    );
  }
}
