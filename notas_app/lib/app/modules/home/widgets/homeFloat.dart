import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:unicorndial/unicorndial.dart';

import '../../../app_controller.dart';
import '../home_controller.dart';

var homeController = Modular.get<HomeController>();
var appController = Modular.get<AppController>();

class HomeFloatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //* criando a variável para receber a lista de botoões
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
    return UnicornDialer(
        backgroundColor: Colors.transparent,
        parentButton: Icon(Icons.menu),
        childButtons: childUnicornButtons);
  }
}
