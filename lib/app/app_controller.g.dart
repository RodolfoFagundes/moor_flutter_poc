// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AppController = BindInject(
  (i) => AppController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$configuracaoModelAtom =
      Atom(name: '_AppControllerBase.configuracaoModel');

  @override
  ConfiguracaoModel get configuracaoModel {
    _$configuracaoModelAtom.reportRead();
    return super.configuracaoModel;
  }

  @override
  set configuracaoModel(ConfiguracaoModel value) {
    _$configuracaoModelAtom.reportWrite(value, super.configuracaoModel, () {
      super.configuracaoModel = value;
    });
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  void setConfiguracaoModel(ConfiguracaoModel value) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.setConfiguracaoModel');
    try {
      return super.setConfiguracaoModel(value);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
configuracaoModel: ${configuracaoModel}
    ''';
  }
}
