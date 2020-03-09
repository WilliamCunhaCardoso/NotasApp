import 'package:flutter_modular/flutter_modular.dart';
import 'package:notas_app/app/modules/nota/nota_controller.dart';
import 'package:notas_app/app/modules/nota/nota_page.dart';

class NotaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NotaController()),
      ];

  @override
  List<Router> get routers => [Router('/', child: (_, args) => NotaPage())];

  static Inject get to => Inject<NotaModule>.of();
}
