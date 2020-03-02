import 'package:moor_flutter/moor_flutter.dart';
import 'package:notas_app/app/data/model/nota_model.dart';

@UseDao(tables: [Nota])
class NotaDAO extends DatabaseAccessor<MyDatabase> with _$NotaDAOMixin {
  final MyDatabase db;

  NotaDAO(db) : super(db);
}