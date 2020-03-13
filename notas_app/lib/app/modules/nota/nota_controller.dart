import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'nota_controller.g.dart';

class NotaController = _NotaBase with _$NotaController;

abstract class _NotaBase with Store {
  //* TxtFld Controllers
  @observable
  TextEditingController tituloController = TextEditingController();
  @observable
  TextEditingController conteudoController = TextEditingController();

  //* Variáveis
  @observable
  DateTime ultimaAlteracao = DateTime.now();

  @action
  void setUltimaAlteracao(DateTime value) => ultimaAlteracao = value;

  @computed
  String get formattedDate =>
      DateFormat('dd-MM-yyyy – kk:mm').format(ultimaAlteracao);

  @action
  TextEditingController titulo(String value) {
    if (value == null) {
      tituloController.text = '';
    } else {
      tituloController.text = value;
    }
    return tituloController;
  }

  void cleanControllers() {
    tituloController.text = '';
    conteudoController.text = '';
  }
}
