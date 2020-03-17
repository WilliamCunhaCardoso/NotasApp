import 'package:notas_app/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/modules/home/home_page.dart';
import 'package:notas_app/app/modules/nota/nota_controller.dart';
// import 'package:notas_app/app/shared/functions/open-card.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NotaController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => HomePage())];

  static Inject get to => Inject<HomeModule>.of();
}
