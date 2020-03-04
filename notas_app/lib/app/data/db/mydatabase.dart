import 'package:moor_flutter/moor_flutter.dart';

// Dao
import '../dao/nota_dao.dart';

// Table
import '../model/nota_model.dart';

// Arquivo gerado automaticamente
part 'mydatabase.g.dart';

@UseMoor(tables: [Notas], daos: [NotaDAO])
class MyDatabase extends _$MyDatabase {
  // Singleton
  static MyDatabase instance = MyDatabase._internal();

  // DAO
  NotaDAO notaDAO;

  MyDatabase._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true)) {
    notaDAO = NotaDAO(this);
  }

  @override
  int get schemaVersion => 1;
}
