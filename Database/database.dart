import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart';

part 'database.g.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
}
