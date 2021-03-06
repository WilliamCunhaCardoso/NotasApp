import 'package:flutter/material.dart';

import 'widgets/notaBodyWidget.dart';
import 'widgets/notaBottomSheet.dart';
import 'widgets/notaTitleWidget.dart';

class NotaPage extends StatefulWidget {
  final String title;

  const NotaPage({Key key, this.title = "Nota"}) : super(key: key);

  @override
  _NotaPageState createState() => _NotaPageState();
}

class _NotaPageState extends State<NotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: NotaTitleWidget(),
            textTheme: ThemeData().appBarTheme.textTheme,
            actionsIconTheme: ThemeData().appBarTheme.actionsIconTheme,
            iconTheme: ThemeData().appBarTheme.iconTheme),
        body: Padding(
            padding: const EdgeInsets.all(8.0), child: NotaBodyWidget()),
        bottomSheet: NotaBottomSheetWidget());
  }
}
