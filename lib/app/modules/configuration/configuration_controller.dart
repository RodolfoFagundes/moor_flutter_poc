import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moor_flutter_poc/app/database/my_database.dart';
import 'package:moor_flutter_poc/app/shared/models/configuracao_model.dart';

part 'configuration_controller.g.dart';

@Injectable()
class ConfigurationController = _ConfigurationControllerBase
    with _$ConfigurationController;

abstract class _ConfigurationControllerBase with Store {
  @observable
  ConfiguracaoModel configuracaoModel;

  @observable
  bool isLoading = false;

  @action
  Future<void> addConfiguracao(String nome, String cnpj, String url) async {
    if (!isLoading) {
      int newId = await MyDatabase.instance.configuracoesDao.addConfiguracao(
          new Configuracao(
              id: null,
              nome: nome,
              cnpj: cnpj,
              url: url,
              dataHoraAlteracao: DateTime.now(),
              usuarioAlteracao: null));

      configuracaoModel =
          new ConfiguracaoModel(id: newId, nome: nome, cnpj: cnpj, url: url);
    }
  }

  @action
  Future<void> updateConfiguracao(Configuracao updateConfiguracao) async {
    if (!isLoading) {
      await MyDatabase.instance.configuracoesDao
          .updateConfiguracao(updateConfiguracao);

      configuracaoModel = new ConfiguracaoModel(
          id: updateConfiguracao.id,
          nome: updateConfiguracao.nome,
          cnpj: updateConfiguracao.cnpj,
          url: updateConfiguracao.url);
    }
  }
}
