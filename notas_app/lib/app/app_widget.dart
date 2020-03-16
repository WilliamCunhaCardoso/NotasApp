import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/app_controller.dart';
import 'package:notas_app/app/shared/constants/app_const.dart';

final appController = Modular.get<AppController>();

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        navigatorKey: Modular.navigatorKey,
        title: 'Flutter Slidy',
        theme: appController.darkMode ? darkTheme : lightTheme,
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
