import 'package:flutter_modular/flutter_modular.dart';

import 'nota_controller.dart';
import 'nota_page.dart';
import 'nota_editor.dart';

class NotaModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => NotaController())];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => NotaPage()),
        Router('/editor', child: (_, args) => NotaEditorPage(nota: args.data)),
      ];

  static Inject get to => Inject<NotaModule>.of();
}
