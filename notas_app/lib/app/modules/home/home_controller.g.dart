// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$editModeAtom = Atom(name: '_HomeControllerBase.editMode');

  @override
  bool get editMode {
    _$editModeAtom.context.enforceReadPolicy(_$editModeAtom);
    _$editModeAtom.reportObserved();
    return super.editMode;
  }

  @override
  set editMode(bool value) {
    _$editModeAtom.context.conditionallyRunInAction(() {
      super.editMode = value;
      _$editModeAtom.reportChanged();
    }, _$editModeAtom, name: '${_$editModeAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changeEditMode() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.changeEditMode();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'editMode: ${editMode.toString()}';
    return '{$string}';
  }
}
