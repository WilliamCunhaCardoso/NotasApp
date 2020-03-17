import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/modules/home/home_controller.dart';

var homeController = Modular.get<HomeController>();

class HomeBottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => homeController.editMode
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Remover notas: (X)'),
              ))
          : Container(height: 0),
    );
  }
}
