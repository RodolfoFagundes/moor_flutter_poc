import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor_flutter_poc/app/database/tables/configuracoes.dart';

import '../my_database.dart';

part 'configuracoes_dao.g.dart';

@UseDao(tables: [Configuracoes])
class ConfiguracoesDao extends DatabaseAccessor<MyDatabase>
    with _$ConfiguracoesDaoMixin {
  ConfiguracoesDao(MyDatabase attachedDatabase) : super(attachedDatabase);

  Future addConfiguracao(Configuracao configuracao) {
    return into(configuracoes).insert(configuracao);
  }

  Future updateConfiguracao(Configuracao configuracao) {
    return update(configuracoes).replace(configuracao);
  }

  Stream<List<Configuracao>> getReactiveAllConfiguracoes() {
    return select(configuracoes).watch();
  }

  Future<List<Configuracao>> getAllConfiguracoes() {
    return select(configuracoes).get();
  }

  Future deleteConfiguracao(int id) {
    return (delete(configuracoes)..where((todo) => configuracoes.id.equals(id)))
        .go();
  }
}
