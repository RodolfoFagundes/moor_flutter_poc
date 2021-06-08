// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Configuracao extends DataClass implements Insertable<Configuracao> {
  final int id;
  final String nome;
  final String cnpj;
  final String url;
  final DateTime dataHoraAlteracao;
  final String usuarioAlteracao;
  Configuracao(
      {@required this.id,
      @required this.nome,
      @required this.cnpj,
      @required this.url,
      @required this.dataHoraAlteracao,
      this.usuarioAlteracao});
  factory Configuracao.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Configuracao(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      cnpj: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cnpj']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      dataHoraAlteracao: dateTimeType.mapFromDatabaseResponse(
          data['${effectivePrefix}data_hora_alteracao']),
      usuarioAlteracao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usuario_alteracao']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || cnpj != null) {
      map['cnpj'] = Variable<String>(cnpj);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || dataHoraAlteracao != null) {
      map['data_hora_alteracao'] = Variable<DateTime>(dataHoraAlteracao);
    }
    if (!nullToAbsent || usuarioAlteracao != null) {
      map['usuario_alteracao'] = Variable<String>(usuarioAlteracao);
    }
    return map;
  }

  ConfiguracoesCompanion toCompanion(bool nullToAbsent) {
    return ConfiguracoesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      cnpj: cnpj == null && nullToAbsent ? const Value.absent() : Value(cnpj),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      dataHoraAlteracao: dataHoraAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(dataHoraAlteracao),
      usuarioAlteracao: usuarioAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(usuarioAlteracao),
    );
  }

  factory Configuracao.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Configuracao(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      cnpj: serializer.fromJson<String>(json['cnpj']),
      url: serializer.fromJson<String>(json['url']),
      dataHoraAlteracao:
          serializer.fromJson<DateTime>(json['dataHoraAlteracao']),
      usuarioAlteracao: serializer.fromJson<String>(json['usuarioAlteracao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'cnpj': serializer.toJson<String>(cnpj),
      'url': serializer.toJson<String>(url),
      'dataHoraAlteracao': serializer.toJson<DateTime>(dataHoraAlteracao),
      'usuarioAlteracao': serializer.toJson<String>(usuarioAlteracao),
    };
  }

  Configuracao copyWith(
          {int id,
          String nome,
          String cnpj,
          String url,
          DateTime dataHoraAlteracao,
          String usuarioAlteracao}) =>
      Configuracao(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        cnpj: cnpj ?? this.cnpj,
        url: url ?? this.url,
        dataHoraAlteracao: dataHoraAlteracao ?? this.dataHoraAlteracao,
        usuarioAlteracao: usuarioAlteracao ?? this.usuarioAlteracao,
      );
  @override
  String toString() {
    return (StringBuffer('Configuracao(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cnpj: $cnpj, ')
          ..write('url: $url, ')
          ..write('dataHoraAlteracao: $dataHoraAlteracao, ')
          ..write('usuarioAlteracao: $usuarioAlteracao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          nome.hashCode,
          $mrjc(
              cnpj.hashCode,
              $mrjc(
                  url.hashCode,
                  $mrjc(dataHoraAlteracao.hashCode,
                      usuarioAlteracao.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Configuracao &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.cnpj == this.cnpj &&
          other.url == this.url &&
          other.dataHoraAlteracao == this.dataHoraAlteracao &&
          other.usuarioAlteracao == this.usuarioAlteracao);
}

class ConfiguracoesCompanion extends UpdateCompanion<Configuracao> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cnpj;
  final Value<String> url;
  final Value<DateTime> dataHoraAlteracao;
  final Value<String> usuarioAlteracao;
  const ConfiguracoesCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cnpj = const Value.absent(),
    this.url = const Value.absent(),
    this.dataHoraAlteracao = const Value.absent(),
    this.usuarioAlteracao = const Value.absent(),
  });
  ConfiguracoesCompanion.insert({
    this.id = const Value.absent(),
    @required String nome,
    @required String cnpj,
    @required String url,
    @required DateTime dataHoraAlteracao,
    this.usuarioAlteracao = const Value.absent(),
  })  : nome = Value(nome),
        cnpj = Value(cnpj),
        url = Value(url),
        dataHoraAlteracao = Value(dataHoraAlteracao);
  static Insertable<Configuracao> custom({
    Expression<int> id,
    Expression<String> nome,
    Expression<String> cnpj,
    Expression<String> url,
    Expression<DateTime> dataHoraAlteracao,
    Expression<String> usuarioAlteracao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cnpj != null) 'cnpj': cnpj,
      if (url != null) 'url': url,
      if (dataHoraAlteracao != null) 'data_hora_alteracao': dataHoraAlteracao,
      if (usuarioAlteracao != null) 'usuario_alteracao': usuarioAlteracao,
    });
  }

  ConfiguracoesCompanion copyWith(
      {Value<int> id,
      Value<String> nome,
      Value<String> cnpj,
      Value<String> url,
      Value<DateTime> dataHoraAlteracao,
      Value<String> usuarioAlteracao}) {
    return ConfiguracoesCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cnpj: cnpj ?? this.cnpj,
      url: url ?? this.url,
      dataHoraAlteracao: dataHoraAlteracao ?? this.dataHoraAlteracao,
      usuarioAlteracao: usuarioAlteracao ?? this.usuarioAlteracao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cnpj.present) {
      map['cnpj'] = Variable<String>(cnpj.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (dataHoraAlteracao.present) {
      map['data_hora_alteracao'] = Variable<DateTime>(dataHoraAlteracao.value);
    }
    if (usuarioAlteracao.present) {
      map['usuario_alteracao'] = Variable<String>(usuarioAlteracao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfiguracoesCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cnpj: $cnpj, ')
          ..write('url: $url, ')
          ..write('dataHoraAlteracao: $dataHoraAlteracao, ')
          ..write('usuarioAlteracao: $usuarioAlteracao')
          ..write(')'))
        .toString();
  }
}

class $ConfiguracoesTable extends Configuracoes
    with TableInfo<$ConfiguracoesTable, Configuracao> {
  final GeneratedDatabase _db;
  final String _alias;
  $ConfiguracoesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cnpjMeta = const VerificationMeta('cnpj');
  GeneratedTextColumn _cnpj;
  @override
  GeneratedTextColumn get cnpj => _cnpj ??= _constructCnpj();
  GeneratedTextColumn _constructCnpj() {
    return GeneratedTextColumn(
      'cnpj',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dataHoraAlteracaoMeta =
      const VerificationMeta('dataHoraAlteracao');
  GeneratedDateTimeColumn _dataHoraAlteracao;
  @override
  GeneratedDateTimeColumn get dataHoraAlteracao =>
      _dataHoraAlteracao ??= _constructDataHoraAlteracao();
  GeneratedDateTimeColumn _constructDataHoraAlteracao() {
    return GeneratedDateTimeColumn(
      'data_hora_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuarioAlteracaoMeta =
      const VerificationMeta('usuarioAlteracao');
  GeneratedTextColumn _usuarioAlteracao;
  @override
  GeneratedTextColumn get usuarioAlteracao =>
      _usuarioAlteracao ??= _constructUsuarioAlteracao();
  GeneratedTextColumn _constructUsuarioAlteracao() {
    return GeneratedTextColumn(
      'usuario_alteracao',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, cnpj, url, dataHoraAlteracao, usuarioAlteracao];
  @override
  $ConfiguracoesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'configuracoes';
  @override
  final String actualTableName = 'configuracoes';
  @override
  VerificationContext validateIntegrity(Insertable<Configuracao> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cnpj')) {
      context.handle(
          _cnpjMeta, cnpj.isAcceptableOrUnknown(data['cnpj'], _cnpjMeta));
    } else if (isInserting) {
      context.missing(_cnpjMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url'], _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('data_hora_alteracao')) {
      context.handle(
          _dataHoraAlteracaoMeta,
          dataHoraAlteracao.isAcceptableOrUnknown(
              data['data_hora_alteracao'], _dataHoraAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_dataHoraAlteracaoMeta);
    }
    if (data.containsKey('usuario_alteracao')) {
      context.handle(
          _usuarioAlteracaoMeta,
          usuarioAlteracao.isAcceptableOrUnknown(
              data['usuario_alteracao'], _usuarioAlteracaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Configuracao map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Configuracao.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ConfiguracoesTable createAlias(String alias) {
    return $ConfiguracoesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ConfiguracoesTable _configuracoes;
  $ConfiguracoesTable get configuracoes =>
      _configuracoes ??= $ConfiguracoesTable(this);
  ConfiguracoesDao _configuracoesDao;
  ConfiguracoesDao get configuracoesDao =>
      _configuracoesDao ??= ConfiguracoesDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [configuracoes];
}
