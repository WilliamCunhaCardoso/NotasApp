// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nota_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotaController on _NotaBase, Store {
  Computed<String> _$formattedDateComputed;

  @override
  String get formattedDate =>
      (_$formattedDateComputed ??= Computed<String>(() => super.formattedDate))
          .value;

  final _$tituloControllerAtom = Atom(name: '_NotaBase.tituloController');

  @override
  TextEditingController get tituloController {
    _$tituloControllerAtom.context.enforceReadPolicy(_$tituloControllerAtom);
    _$tituloControllerAtom.reportObserved();
    return super.tituloController;
  }

  @override
  set tituloController(TextEditingController value) {
    _$tituloControllerAtom.context.conditionallyRunInAction(() {
      super.tituloController = value;
      _$tituloControllerAtom.reportChanged();
    }, _$tituloControllerAtom, name: '${_$tituloControllerAtom.name}_set');
  }

  final _$conteudoControllerAtom = Atom(name: '_NotaBase.conteudoController');

  @override
  TextEditingController get conteudoController {
    _$conteudoControllerAtom.context
        .enforceReadPolicy(_$conteudoControllerAtom);
    _$conteudoControllerAtom.reportObserved();
    return super.conteudoController;
  }

  @override
  set conteudoController(TextEditingController value) {
    _$conteudoControllerAtom.context.conditionallyRunInAction(() {
      super.conteudoController = value;
      _$conteudoControllerAtom.reportChanged();
    }, _$conteudoControllerAtom, name: '${_$conteudoControllerAtom.name}_set');
  }

  final _$ultimaAlteracaoAtom = Atom(name: '_NotaBase.ultimaAlteracao');

  @override
  DateTime get ultimaAlteracao {
    _$ultimaAlteracaoAtom.context.enforceReadPolicy(_$ultimaAlteracaoAtom);
    _$ultimaAlteracaoAtom.reportObserved();
    return super.ultimaAlteracao;
  }

  @override
  set ultimaAlteracao(DateTime value) {
    _$ultimaAlteracaoAtom.context.conditionallyRunInAction(() {
      super.ultimaAlteracao = value;
      _$ultimaAlteracaoAtom.reportChanged();
    }, _$ultimaAlteracaoAtom, name: '${_$ultimaAlteracaoAtom.name}_set');
  }

  final _$_NotaBaseActionController = ActionController(name: '_NotaBase');

  @override
  void setUltimaAlteracao(DateTime value) {
    final _$actionInfo = _$_NotaBaseActionController.startAction();
    try {
      return super.setUltimaAlteracao(value);
    } finally {
      _$_NotaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'tituloController: ${tituloController.toString()},conteudoController: ${conteudoController.toString()},ultimaAlteracao: ${ultimaAlteracao.toString()},formattedDate: ${formattedDate.toString()}';
    return '{$string}';
  }
}
