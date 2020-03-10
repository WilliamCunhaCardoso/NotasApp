import 'package:moor_flutter/moor_flutter.dart';

class Notas extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get ultimaAlteracao => dateTime()();
  TextColumn get titulo => text().withLength(min: 1, max: 15)();
  TextColumn get conteudo => text().named('body')();
}
