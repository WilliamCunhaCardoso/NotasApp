import 'package:moor_flutter/moor_flutter.dart';
import 'package:notas_app/app/data/db/mydatabase.dart';
import 'package:notas_app/app/data/model/nota_model.dart';

part 'nota_dao.g.dart';

@UseDao(tables: [Notas])
class NotaDAO extends DatabaseAccessor<MyDatabase> with _$NotaDAOMixin {
  final MyDatabase db;

  Stream<List<Nota>> listarTodos() => select(notas).watch();
  Future addNota(Insertable<Nota> entity) => into(notas).insert(entity);
  Future rmNota(Insertable<Nota> entity) => delete(notas).delete(entity);
  Future upNota(Insertable<Nota> entity) => update(notas).replace(entity);

  Future deleteNotas() => (delete(notas)..where((t) => t.checked.equals(true))).go();

  NotaDAO(this.db) : super(db);
}
