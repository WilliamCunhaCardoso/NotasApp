// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nota_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotaController on _NotaBase, Store {
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

  final _$textoAtom = Atom(name: '_NotaBase.texto');

  @override
  String get texto {
    _$textoAtom.context.enforceReadPolicy(_$textoAtom);
    _$textoAtom.reportObserved();
    return super.texto;
  }

  @override
  set texto(String value) {
    _$textoAtom.context.conditionallyRunInAction(() {
      super.texto = value;
      _$textoAtom.reportChanged();
    }, _$textoAtom, name: '${_$textoAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'ultimaAlteracao: ${ultimaAlteracao.toString()},tituloController: ${tituloController.toString()},texto: ${texto.toString()}';
    return '{$string}';
  }
}
