// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mydatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Nota extends DataClass implements Insertable<Nota> {
  final int id;
  final DateTime ultimaAlteracao;
  final String titulo;
  final String conteudo;
  Nota(
      {@required this.id,
      @required this.ultimaAlteracao,
      @required this.titulo,
      @required this.conteudo});
  factory Nota.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    return Nota(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      ultimaAlteracao: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}ultima_alteracao']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      conteudo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
    );
  }
  factory Nota.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Nota(
      id: serializer.fromJson<int>(json['id']),
      ultimaAlteracao: serializer.fromJson<DateTime>(json['ultimaAlteracao']),
      titulo: serializer.fromJson<String>(json['titulo']),
      conteudo: serializer.fromJson<String>(json['conteudo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'ultimaAlteracao': serializer.toJson<DateTime>(ultimaAlteracao),
      'titulo': serializer.toJson<String>(titulo),
      'conteudo': serializer.toJson<String>(conteudo),
    };
  }

  @override
  NotasCompanion createCompanion(bool nullToAbsent) {
    return NotasCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      ultimaAlteracao: ultimaAlteracao == null && nullToAbsent
          ? const Value.absent()
          : Value(ultimaAlteracao),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      conteudo: conteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(conteudo),
    );
  }

  Nota copyWith(
          {int id, DateTime ultimaAlteracao, String titulo, String conteudo}) =>
      Nota(
        id: id ?? this.id,
        ultimaAlteracao: ultimaAlteracao ?? this.ultimaAlteracao,
        titulo: titulo ?? this.titulo,
        conteudo: conteudo ?? this.conteudo,
      );
  @override
  String toString() {
    return (StringBuffer('Nota(')
          ..write('id: $id, ')
          ..write('ultimaAlteracao: $ultimaAlteracao, ')
          ..write('titulo: $titulo, ')
          ..write('conteudo: $conteudo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(ultimaAlteracao.hashCode,
          $mrjc(titulo.hashCode, conteudo.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Nota &&
          other.id == this.id &&
          other.ultimaAlteracao == this.ultimaAlteracao &&
          other.titulo == this.titulo &&
          other.conteudo == this.conteudo);
}

class NotasCompanion extends UpdateCompanion<Nota> {
  final Value<int> id;
  final Value<DateTime> ultimaAlteracao;
  final Value<String> titulo;
  final Value<String> conteudo;
  const NotasCompanion({
    this.id = const Value.absent(),
    this.ultimaAlteracao = const Value.absent(),
    this.titulo = const Value.absent(),
    this.conteudo = const Value.absent(),
  });
  NotasCompanion.insert({
    this.id = const Value.absent(),
    @required DateTime ultimaAlteracao,
    @required String titulo,
    @required String conteudo,
  })  : ultimaAlteracao = Value(ultimaAlteracao),
        titulo = Value(titulo),
        conteudo = Value(conteudo);
  NotasCompanion copyWith(
      {Value<int> id,
      Value<DateTime> ultimaAlteracao,
      Value<String> titulo,
      Value<String> conteudo}) {
    return NotasCompanion(
      id: id ?? this.id,
      ultimaAlteracao: ultimaAlteracao ?? this.ultimaAlteracao,
      titulo: titulo ?? this.titulo,
      conteudo: conteudo ?? this.conteudo,
    );
  }
}

class $NotasTable extends Notas with TableInfo<$NotasTable, Nota> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotasTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ultimaAlteracaoMeta =
      const VerificationMeta('ultimaAlteracao');
  GeneratedDateTimeColumn _ultimaAlteracao;
  @override
  GeneratedDateTimeColumn get ultimaAlteracao =>
      _ultimaAlteracao ??= _constructUltimaAlteracao();
  GeneratedDateTimeColumn _constructUltimaAlteracao() {
    return GeneratedDateTimeColumn(
      'ultima_alteracao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  GeneratedTextColumn _titulo;
  @override
  GeneratedTextColumn get titulo => _titulo ??= _constructTitulo();
  GeneratedTextColumn _constructTitulo() {
    return GeneratedTextColumn('titulo', $tableName, false,
        minTextLength: 1, maxTextLength: 15);
  }

  final VerificationMeta _conteudoMeta = const VerificationMeta('conteudo');
  GeneratedTextColumn _conteudo;
  @override
  GeneratedTextColumn get conteudo => _conteudo ??= _constructConteudo();
  GeneratedTextColumn _constructConteudo() {
    return GeneratedTextColumn(
      'body',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, ultimaAlteracao, titulo, conteudo];
  @override
  $NotasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notas';
  @override
  final String actualTableName = 'notas';
  @override
  VerificationContext validateIntegrity(NotasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.ultimaAlteracao.present) {
      context.handle(
          _ultimaAlteracaoMeta,
          ultimaAlteracao.isAcceptableValue(
              d.ultimaAlteracao.value, _ultimaAlteracaoMeta));
    } else if (isInserting) {
      context.missing(_ultimaAlteracaoMeta);
    }
    if (d.titulo.present) {
      context.handle(
          _tituloMeta, titulo.isAcceptableValue(d.titulo.value, _tituloMeta));
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    if (d.conteudo.present) {
      context.handle(_conteudoMeta,
          conteudo.isAcceptableValue(d.conteudo.value, _conteudoMeta));
    } else if (isInserting) {
      context.missing(_conteudoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Nota map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Nota.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(NotasCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.ultimaAlteracao.present) {
      map['ultima_alteracao'] =
          Variable<DateTime, DateTimeType>(d.ultimaAlteracao.value);
    }
    if (d.titulo.present) {
      map['titulo'] = Variable<String, StringType>(d.titulo.value);
    }
    if (d.conteudo.present) {
      map['body'] = Variable<String, StringType>(d.conteudo.value);
    }
    return map;
  }

  @override
  $NotasTable createAlias(String alias) {
    return $NotasTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $NotasTable _notas;
  $NotasTable get notas => _notas ??= $NotasTable(this);
  NotaDAO _notaDAO;
  NotaDAO get notaDAO => _notaDAO ??= NotaDAO(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [notas];
}
