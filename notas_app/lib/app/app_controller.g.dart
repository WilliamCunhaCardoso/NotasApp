// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$darkModeAtom = Atom(name: '_AppControllerBase.darkMode');

  @override
  bool get darkMode {
    _$darkModeAtom.context.enforceReadPolicy(_$darkModeAtom);
    _$darkModeAtom.reportObserved();
    return super.darkMode;
  }

  @override
  set darkMode(bool value) {
    _$darkModeAtom.context.conditionallyRunInAction(() {
      super.darkMode = value;
      _$darkModeAtom.reportChanged();
    }, _$darkModeAtom, name: '${_$darkModeAtom.name}_set');
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  void changeTheme() {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction();
    try {
      return super.changeTheme();
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'darkMode: ${darkMode.toString()}';
    return '{$string}';
  }
}
