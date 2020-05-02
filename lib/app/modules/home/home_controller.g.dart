// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$showContainerDialogAtom =
      Atom(name: '_HomeControllerBase.showContainerDialog');

  @override
  bool get showContainerDialog {
    _$showContainerDialogAtom.context
        .enforceReadPolicy(_$showContainerDialogAtom);
    _$showContainerDialogAtom.reportObserved();
    return super.showContainerDialog;
  }

  @override
  set showContainerDialog(bool value) {
    _$showContainerDialogAtom.context.conditionallyRunInAction(() {
      super.showContainerDialog = value;
      _$showContainerDialogAtom.reportChanged();
    }, _$showContainerDialogAtom,
        name: '${_$showContainerDialogAtom.name}_set');
  }

  final _$valueAtom = Atom(name: '_HomeControllerBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  @override
  ObservableFuture<dynamic> showContainer() {
    final _$future = super.showContainer();
    return ObservableFuture<dynamic>(_$future);
  }

  @override
  ObservableFuture<dynamic> hideContainer() {
    final _$future = super.hideContainer();
    return ObservableFuture<dynamic>(_$future);
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'showContainerDialog: ${showContainerDialog.toString()},value: ${value.toString()}';
    return '{$string}';
  }
}
