import 'package:flutter/material.dart';

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
        title: Text(''), // todo: set title var
      ),
      body: Container(
        child: Text(''),
      ), // todo: implement body text note
      bottomSheet: Text(''), // todo: set ultima edicao
    );
  }
}
