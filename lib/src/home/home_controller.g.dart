// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on HomeControllerBase, Store {
  Computed<int> _$valueComputed;

  @override
  int get value => (_$valueComputed ??=
          Computed<int>(() => super.value, name: 'HomeControllerBase.value'))
      .value;

  final _$_valueAtom = Atom(name: 'HomeControllerBase._value');

  @override
  int get _value {
    _$_valueAtom.reportRead();
    return super._value;
  }

  @override
  set _value(int value) {
    _$_valueAtom.reportWrite(value, super._value, () {
      super._value = value;
    });
  }

  final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
