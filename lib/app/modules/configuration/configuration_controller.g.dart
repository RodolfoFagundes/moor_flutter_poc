// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ConfigurationController = BindInject(
  (i) => ConfigurationController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigurationController on _ConfigurationControllerBase, Store {
  final _$configuracaoModelAtom =
      Atom(name: '_ConfigurationControllerBase.configuracaoModel');

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

  final _$isLoadingAtom = Atom(name: '_ConfigurationControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$addConfiguracaoAsyncAction =
      AsyncAction('_ConfigurationControllerBase.addConfiguracao');

  @override
  Future<void> addConfiguracao(String nome, String cnpj, String url) {
    return _$addConfiguracaoAsyncAction
        .run(() => super.addConfiguracao(nome, cnpj, url));
  }

  final _$updateConfiguracaoAsyncAction =
      AsyncAction('_ConfigurationControllerBase.updateConfiguracao');

  @override
  Future<void> updateConfiguracao(dynamic updateConfiguracao) {
    return _$updateConfiguracaoAsyncAction
        .run(() => super.updateConfiguracao(updateConfiguracao));
  }

  @override
  String toString() {
    return '''
configuracaoModel: ${configuracaoModel},
isLoading: ${isLoading}
    ''';
  }
}
