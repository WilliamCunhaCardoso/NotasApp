import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  @observable
  String formattedDate;

  @action
  void setUltimaAlteracao(DateTime value) {
    ultimaAlteracao = value;
  }

  @computed
  void getUltimaAlteracao() {
    formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(ultimaAlteracao);
  }
}
