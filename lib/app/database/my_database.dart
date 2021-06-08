import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor_flutter_poc/app/database/tables/configuracoes.dart';

import 'dao/configuracoes_dao.dart';

part 'my_database.g.dart';

@UseMoor(tables: [Configuracoes], daos: [ConfiguracoesDao])
class MyDatabase extends _$MyDatabase {
  static final MyDatabase instance = MyDatabase._internal();

  MyDatabase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;
}
