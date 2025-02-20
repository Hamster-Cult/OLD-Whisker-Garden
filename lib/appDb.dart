// testigns shtit
import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'appDb.g.dart';

@DriftDatabase(
    tables: [Users, MoodLog, Goals, Entries, Plant, UserEntries, Garden])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<User>> getAllUsers() => select(users).get();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'appDb.sqlite'));
    return NativeDatabase(file);
  });
}
