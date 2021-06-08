import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moor_flutter_poc/app/database/my_database.dart';
import 'package:moor_flutter_poc/app/shared/models/configuracao_model.dart';
import 'configuration_controller.dart';

class ConfigurationPage extends StatefulWidget {
  final String title;
  final ConfiguracaoModel configuracaoModel;
  const ConfigurationPage(
      {Key key, this.title = "Configurações", this.configuracaoModel})
      : super(key: key);

  @override
  _ConfigurationPageState createState() => _ConfigurationPageState();
}

class _ConfigurationPageState
    extends ModularState<ConfigurationPage, ConfigurationController> {
  ConfiguracaoModel _configuracaoModel = new ConfiguracaoModel(
    id: 0,
    nome: "Teste insert",
    cnpj: "42472655000102",
    url: "www.google.com",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: StreamBuilder<List<Configuracao>>(
        stream:
            MyDatabase.instance.configuracoesDao.getReactiveAllConfiguracoes(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          List<Configuracao> list = snapshot.data;
          return ListView.builder(
              itemCount:
                  ((list == null) || (list.length == 0)) ? 0 : list.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  child: Card(
                    child: ListTile(
                      title: Text(
                        list[index].nome,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await controller.addConfiguracao(_configuracaoModel.nome,
            _configuracaoModel.cnpj, _configuracaoModel.url);

        Configuracao newConfiguracaoModel = new Configuracao(
          id: controller.configuracaoModel.id,
          nome: "Teste update" + controller.configuracaoModel.id.toString(),
          cnpj: controller.configuracaoModel.cnpj,
          url: controller.configuracaoModel.url,
          dataHoraAlteracao: DateTime.now(),
        );

        await controller.updateConfiguracao(newConfiguracaoModel);
      }),
    );
  }
}
