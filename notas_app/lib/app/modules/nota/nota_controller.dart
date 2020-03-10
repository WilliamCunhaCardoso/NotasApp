import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'nota_controller.g.dart';

class NotaController = _NotaBase with _$NotaController;

abstract class _NotaBase with Store {
  @observable
  DateTime ultimaAlteracao = DateTime.now();
  @observable 
  TextEditingController tituloController = TextEditingController();
  @observable
  String texto = 'Texto';
}
