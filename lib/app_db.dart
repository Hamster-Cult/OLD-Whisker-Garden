import 'dart:ffi';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart';

part 'app_db.g.dart';

@DriftDatabase(
  include: {'database.drift'},
)
class AppDatabase extends _$AppDatabase {
  static AppDatabase instance() => AppDatabase();

  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

@UseRowClass(Users)
class Users extends Table {
  IntColumn get userId => integer().autoIncrement()();
  IntColumn get plantId => integer()();
  TextColumn get username => text()();
  IntColumn get level => integer()();
  IntColumn get exp => integer()();

  @override
  Set<Column> get primaryKey => {userId};
}

@UseRowClass(MoodLogs)
class MoodLogs extends Table {
  IntColumn get moodId => integer().autoIncrement()();
  DateTimeColumn get moodDate => dateTime()();
  DateTimeColumn get moodTime => dateTime()();
  IntColumn get moodRating => integer()();
  TextColumn get moodText => text().nullable()();

  @override
  Set<Column> get primaryKey => {moodId};
}

@UseRowClass(Goals)
class Goals extends Table {
  IntColumn get goalId => integer().autoIncrement()();
  IntColumn get plantId => integer()();
  TextColumn get goalName => text()();
  TextColumn get goalDesc => text().nullable()();
  BoolColumn get goalAchievement => boolean()();

  @override
  Set<Column> get primaryKey => {goalId};
}

@UseRowClass(Entries)
class Entries extends Table {
  IntColumn get entryId => integer().autoIncrement()();
  TextColumn get entry => text().nullable()();
  DateTimeColumn get entryDate => dateTime()();
  DateTimeColumn get entryTime => dateTime()();
  IntColumn get rating => integer().nullable()();

  @override
  Set<Column> get primaryKey => {entryId};
}

@UseRowClass(Plants)
class Plants extends Table {
  IntColumn get plantId => integer().autoIncrement()();
  TextColumn get plantType => text()();

  @override
  Set<Column> get primaryKey => {plantId};
}

@UseRowClass(UserEntries)
class UserEntries extends Table {
  IntColumn get userId => integer()();
  IntColumn get entryId => integer()();

  @override
  Set<Column> get primaryKey => {userId, entryId};
}

@UseRowClass(Garden)
class Garden extends Table {
  IntColumn get gardenSlot => integer().autoIncrement()();
  IntColumn get plantId => integer()();
  TextColumn get name => text()();
  BoolColumn get archived => boolean()();
  IntColumn get maturity => integer()();
  DateTimeColumn get lastWatered => dateTime()();

  @override
  Set<Column> get primaryKey => {gardenSlot};
}






/*

/*Chloe's code*/
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    username VARCHAR(20) NOT NULL,
    level INT NOT NULL CHECK (level >= 0),
    exp INT NOT NULL CHECK (exp >= 0)
);

CREATE TABLE mood_log (
    mood_id SERIAL PRIMARY KEY,
    mood_date DATE NOT NULL CHECK (mood_date <= CURRENT_DATE),
    mood_time TIME NOT NULL,
    mood_rating SMALLINT NOT NULL CHECK (mood_rating BETWEEN 1 AND 5),
    mood_text TEXT NULL
);

CREATE TABLE goals (
    goal_id SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    goal_name VARCHAR(50) NOT NULL,
    goal_desc TEXT NULL,
    goal_achievement BOOLEAN NOT NULL
);

/*Keita's code*/
CREATE TABLE entries (
    entry_id SERIAL PRIMARY KEY,
    entry VARCHAR(255) NULL,
    entry_date DATE NOT NULL,
    entry_time TIME NOT NULL,
    rating INT NULL CHECK (rating >= 0 AND rating <= 5)
);

CREATE TABLE plant (
    plant_id SERIAL PRIMARY KEY,
    plant_type VARCHAR(20) NOT NULL
);

CREATE TABLE user_entries (
    user_id INT NOT NULL,
    entry_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (entry_id) REFERENCES entries(entry_id)
);

CREATE TABLE garden (
    garden_slot SERIAL PRIMARY KEY,
    plant_id INT NOT NULL,
    name VARCHAR(20) NOT NULL,
    archived BOOLEAN NOT NULL,
    maturity INT NOT NULL,
    last_watered DATE NOT NULL,
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
); 
*/