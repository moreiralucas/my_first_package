// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyStore on MyStoreBase, Store {
  Computed<String> _$createdAtComputed;

  @override
  String get createdAt =>
      (_$createdAtComputed ??= Computed<String>(() => super.createdAt,
              name: 'MyStoreBase.createdAt'))
          .value;

  final _$_createdAtAtom = Atom(name: 'MyStoreBase._createdAt');

  @override
  String get _createdAt {
    _$_createdAtAtom.reportRead();
    return super._createdAt;
  }

  @override
  set _createdAt(String value) {
    _$_createdAtAtom.reportWrite(value, super._createdAt, () {
      super._createdAt = value;
    });
  }

  final _$_logAtom = Atom(name: 'MyStoreBase._log');

  @override
  int get _log {
    _$_logAtom.reportRead();
    return super._log;
  }

  @override
  set _log(int value) {
    _$_logAtom.reportWrite(value, super._log, () {
      super._log = value;
    });
  }

  final _$MyStoreBaseActionController = ActionController(name: 'MyStoreBase');

  @override
  void log() {
    final _$actionInfo =
        _$MyStoreBaseActionController.startAction(name: 'MyStoreBase.log');
    try {
      return super.log();
    } finally {
      _$MyStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
createdAt: ${createdAt}
    ''';
  }
}
