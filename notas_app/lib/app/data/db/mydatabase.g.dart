// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mydatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class NotaData extends DataClass implements Insertable<NotaData> {
  final int id;
  final String titulo;
  final String conteudo;
  NotaData({@required this.id, @required this.titulo, @required this.conteudo});
  factory NotaData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return NotaData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      titulo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}titulo']),
      conteudo:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
    );
  }
  factory NotaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return NotaData(
      id: serializer.fromJson<int>(json['id']),
      titulo: serializer.fromJson<String>(json['titulo']),
      conteudo: serializer.fromJson<String>(json['conteudo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'titulo': serializer.toJson<String>(titulo),
      'conteudo': serializer.toJson<String>(conteudo),
    };
  }

  @override
  NotaCompanion createCompanion(bool nullToAbsent) {
    return NotaCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      titulo:
          titulo == null && nullToAbsent ? const Value.absent() : Value(titulo),
      conteudo: conteudo == null && nullToAbsent
          ? const Value.absent()
          : Value(conteudo),
    );
  }

  NotaData copyWith({int id, String titulo, String conteudo}) => NotaData(
        id: id ?? this.id,
        titulo: titulo ?? this.titulo,
        conteudo: conteudo ?? this.conteudo,
      );
  @override
  String toString() {
    return (StringBuffer('NotaData(')
          ..write('id: $id, ')
          ..write('titulo: $titulo, ')
          ..write('conteudo: $conteudo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(titulo.hashCode, conteudo.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is NotaData &&
          other.id == this.id &&
          other.titulo == this.titulo &&
          other.conteudo == this.conteudo);
}

class NotaCompanion extends UpdateCompanion<NotaData> {
  final Value<int> id;
  final Value<String> titulo;
  final Value<String> conteudo;
  const NotaCompanion({
    this.id = const Value.absent(),
    this.titulo = const Value.absent(),
    this.conteudo = const Value.absent(),
  });
  NotaCompanion.insert({
    this.id = const Value.absent(),
    @required String titulo,
    @required String conteudo,
  })  : titulo = Value(titulo),
        conteudo = Value(conteudo);
  NotaCompanion copyWith(
      {Value<int> id, Value<String> titulo, Value<String> conteudo}) {
    return NotaCompanion(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      conteudo: conteudo ?? this.conteudo,
    );
  }
}

class $NotaTable extends Nota with TableInfo<$NotaTable, NotaData> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotaTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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
  List<GeneratedColumn> get $columns => [id, titulo, conteudo];
  @override
  $NotaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'nota';
  @override
  final String actualTableName = 'nota';
  @override
  VerificationContext validateIntegrity(NotaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
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
  NotaData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NotaData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(NotaCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
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
  $NotaTable createAlias(String alias) {
    return $NotaTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $NotaTable _nota;
  $NotaTable get nota => _nota ??= $NotaTable(this);
  NotaDAO _notaDAO;
  NotaDAO get notaDAO => _notaDAO ??= NotaDAO(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [nota];
}
