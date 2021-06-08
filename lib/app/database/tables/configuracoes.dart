import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('Configuracao')
class Configuracoes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  TextColumn get cnpj => text()();
  TextColumn get url => text()();
  DateTimeColumn get dataHoraAlteracao => dateTime()();
  TextColumn get usuarioAlteracao => text().nullable()();
}
