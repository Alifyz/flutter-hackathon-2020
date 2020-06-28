// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on BaseAppStorage, Store {
  final _$requestsAtom = Atom(name: 'BaseAppStorage.requests');

  @override
  List<dynamic> get requests {
    _$requestsAtom.reportRead();
    return super.requests;
  }

  @override
  set requests(List<dynamic> value) {
    _$requestsAtom.reportWrite(value, super.requests, () {
      super.requests = value;
    });
  }

  final _$BaseAppStorageActionController =
      ActionController(name: 'BaseAppStorage');

  @override
  void addRequest(RequestModel request) {
    final _$actionInfo = _$BaseAppStorageActionController.startAction(
        name: 'BaseAppStorage.addRequest');
    try {
      return super.addRequest(request);
    } finally {
      _$BaseAppStorageActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
requests: ${requests}
    ''';
  }
}
