// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appDb.dart';

// ignore_for_file: type=lint
class Users extends Table with TableInfo<Users, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Users(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'userId', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _plantIdMeta =
      const VerificationMeta('plantId');
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
      'plant_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _levelMeta = const VerificationMeta('level');
  late final GeneratedColumn<int> level = GeneratedColumn<int>(
      'level', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL CHECK (level >= 0)');
  static const VerificationMeta _expMeta = const VerificationMeta('exp');
  late final GeneratedColumn<int> exp = GeneratedColumn<int>(
      'exp', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL CHECK (exp >= 0)');
  @override
  List<GeneratedColumn> get $columns => [userId, plantId, username, level, exp];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('userId')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['userId']!, _userIdMeta));
    }
    if (data.containsKey('plant_id')) {
      context.handle(_plantIdMeta,
          plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta));
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('exp')) {
      context.handle(
          _expMeta, exp.isAcceptableOrUnknown(data['exp']!, _expMeta));
    } else if (isInserting) {
      context.missing(_expMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}userId'])!,
      plantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}plant_id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      level: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level'])!,
      exp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}exp'])!,
    );
  }

  @override
  Users createAlias(String alias) {
    return Users(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class User extends DataClass implements Insertable<User> {
  final int userId;
  final int plantId;
  final String username;
  final int level;
  final int exp;
  const User(
      {required this.userId,
      required this.plantId,
      required this.username,
      required this.level,
      required this.exp});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['userId'] = Variable<int>(userId);
    map['plant_id'] = Variable<int>(plantId);
    map['username'] = Variable<String>(username);
    map['level'] = Variable<int>(level);
    map['exp'] = Variable<int>(exp);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      userId: Value(userId),
      plantId: Value(plantId),
      username: Value(username),
      level: Value(level),
      exp: Value(exp),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      userId: serializer.fromJson<int>(json['userId']),
      plantId: serializer.fromJson<int>(json['plant_id']),
      username: serializer.fromJson<String>(json['username']),
      level: serializer.fromJson<int>(json['level']),
      exp: serializer.fromJson<int>(json['exp']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'plant_id': serializer.toJson<int>(plantId),
      'username': serializer.toJson<String>(username),
      'level': serializer.toJson<int>(level),
      'exp': serializer.toJson<int>(exp),
    };
  }

  User copyWith(
          {int? userId,
          int? plantId,
          String? username,
          int? level,
          int? exp}) =>
      User(
        userId: userId ?? this.userId,
        plantId: plantId ?? this.plantId,
        username: username ?? this.username,
        level: level ?? this.level,
        exp: exp ?? this.exp,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      userId: data.userId.present ? data.userId.value : this.userId,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      username: data.username.present ? data.username.value : this.username,
      level: data.level.present ? data.level.value : this.level,
      exp: data.exp.present ? data.exp.value : this.exp,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('userId: $userId, ')
          ..write('plantId: $plantId, ')
          ..write('username: $username, ')
          ..write('level: $level, ')
          ..write('exp: $exp')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, plantId, username, level, exp);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.userId == this.userId &&
          other.plantId == this.plantId &&
          other.username == this.username &&
          other.level == this.level &&
          other.exp == this.exp);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> userId;
  final Value<int> plantId;
  final Value<String> username;
  final Value<int> level;
  final Value<int> exp;
  const UsersCompanion({
    this.userId = const Value.absent(),
    this.plantId = const Value.absent(),
    this.username = const Value.absent(),
    this.level = const Value.absent(),
    this.exp = const Value.absent(),
  });
  UsersCompanion.insert({
    this.userId = const Value.absent(),
    required int plantId,
    required String username,
    required int level,
    required int exp,
  })  : plantId = Value(plantId),
        username = Value(username),
        level = Value(level),
        exp = Value(exp);
  static Insertable<User> custom({
    Expression<int>? userId,
    Expression<int>? plantId,
    Expression<String>? username,
    Expression<int>? level,
    Expression<int>? exp,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'userId': userId,
      if (plantId != null) 'plant_id': plantId,
      if (username != null) 'username': username,
      if (level != null) 'level': level,
      if (exp != null) 'exp': exp,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? userId,
      Value<int>? plantId,
      Value<String>? username,
      Value<int>? level,
      Value<int>? exp}) {
    return UsersCompanion(
      userId: userId ?? this.userId,
      plantId: plantId ?? this.plantId,
      username: username ?? this.username,
      level: level ?? this.level,
      exp: exp ?? this.exp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['userId'] = Variable<int>(userId.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (exp.present) {
      map['exp'] = Variable<int>(exp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('userId: $userId, ')
          ..write('plantId: $plantId, ')
          ..write('username: $username, ')
          ..write('level: $level, ')
          ..write('exp: $exp')
          ..write(')'))
        .toString();
  }
}

class MoodLog extends Table with TableInfo<MoodLog, MoodLogData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  MoodLog(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _moodIdMeta = const VerificationMeta('moodId');
  late final GeneratedColumn<int> moodId = GeneratedColumn<int>(
      'mood_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _moodDateMeta =
      const VerificationMeta('moodDate');
  late final GeneratedColumn<DateTime> moodDate = GeneratedColumn<DateTime>(
      'mood_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _moodTimeMeta =
      const VerificationMeta('moodTime');
  late final GeneratedColumn<double> moodTime = GeneratedColumn<double>(
      'mood_time', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _moodRatingMeta =
      const VerificationMeta('moodRating');
  late final GeneratedColumn<int> moodRating = GeneratedColumn<int>(
      'mood_rating', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL CHECK (mood_rating BETWEEN 1 AND 5)');
  static const VerificationMeta _moodTextMeta =
      const VerificationMeta('moodText');
  late final GeneratedColumn<String> moodText = GeneratedColumn<String>(
      'mood_text', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [moodId, moodDate, moodTime, moodRating, moodText];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mood_log';
  @override
  VerificationContext validateIntegrity(Insertable<MoodLogData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('mood_id')) {
      context.handle(_moodIdMeta,
          moodId.isAcceptableOrUnknown(data['mood_id']!, _moodIdMeta));
    }
    if (data.containsKey('mood_date')) {
      context.handle(_moodDateMeta,
          moodDate.isAcceptableOrUnknown(data['mood_date']!, _moodDateMeta));
    } else if (isInserting) {
      context.missing(_moodDateMeta);
    }
    if (data.containsKey('mood_time')) {
      context.handle(_moodTimeMeta,
          moodTime.isAcceptableOrUnknown(data['mood_time']!, _moodTimeMeta));
    } else if (isInserting) {
      context.missing(_moodTimeMeta);
    }
    if (data.containsKey('mood_rating')) {
      context.handle(
          _moodRatingMeta,
          moodRating.isAcceptableOrUnknown(
              data['mood_rating']!, _moodRatingMeta));
    } else if (isInserting) {
      context.missing(_moodRatingMeta);
    }
    if (data.containsKey('mood_text')) {
      context.handle(_moodTextMeta,
          moodText.isAcceptableOrUnknown(data['mood_text']!, _moodTextMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {moodId};
  @override
  MoodLogData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MoodLogData(
      moodId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mood_id'])!,
      moodDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}mood_date'])!,
      moodTime: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}mood_time'])!,
      moodRating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mood_rating'])!,
      moodText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mood_text']),
    );
  }

  @override
  MoodLog createAlias(String alias) {
    return MoodLog(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class MoodLogData extends DataClass implements Insertable<MoodLogData> {
  final int moodId;
  final DateTime moodDate;
  final double moodTime;
  final int moodRating;
  final String? moodText;
  const MoodLogData(
      {required this.moodId,
      required this.moodDate,
      required this.moodTime,
      required this.moodRating,
      this.moodText});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['mood_id'] = Variable<int>(moodId);
    map['mood_date'] = Variable<DateTime>(moodDate);
    map['mood_time'] = Variable<double>(moodTime);
    map['mood_rating'] = Variable<int>(moodRating);
    if (!nullToAbsent || moodText != null) {
      map['mood_text'] = Variable<String>(moodText);
    }
    return map;
  }

  MoodLogCompanion toCompanion(bool nullToAbsent) {
    return MoodLogCompanion(
      moodId: Value(moodId),
      moodDate: Value(moodDate),
      moodTime: Value(moodTime),
      moodRating: Value(moodRating),
      moodText: moodText == null && nullToAbsent
          ? const Value.absent()
          : Value(moodText),
    );
  }

  factory MoodLogData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MoodLogData(
      moodId: serializer.fromJson<int>(json['mood_id']),
      moodDate: serializer.fromJson<DateTime>(json['mood_date']),
      moodTime: serializer.fromJson<double>(json['mood_time']),
      moodRating: serializer.fromJson<int>(json['mood_rating']),
      moodText: serializer.fromJson<String?>(json['mood_text']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'mood_id': serializer.toJson<int>(moodId),
      'mood_date': serializer.toJson<DateTime>(moodDate),
      'mood_time': serializer.toJson<double>(moodTime),
      'mood_rating': serializer.toJson<int>(moodRating),
      'mood_text': serializer.toJson<String?>(moodText),
    };
  }

  MoodLogData copyWith(
          {int? moodId,
          DateTime? moodDate,
          double? moodTime,
          int? moodRating,
          Value<String?> moodText = const Value.absent()}) =>
      MoodLogData(
        moodId: moodId ?? this.moodId,
        moodDate: moodDate ?? this.moodDate,
        moodTime: moodTime ?? this.moodTime,
        moodRating: moodRating ?? this.moodRating,
        moodText: moodText.present ? moodText.value : this.moodText,
      );
  MoodLogData copyWithCompanion(MoodLogCompanion data) {
    return MoodLogData(
      moodId: data.moodId.present ? data.moodId.value : this.moodId,
      moodDate: data.moodDate.present ? data.moodDate.value : this.moodDate,
      moodTime: data.moodTime.present ? data.moodTime.value : this.moodTime,
      moodRating:
          data.moodRating.present ? data.moodRating.value : this.moodRating,
      moodText: data.moodText.present ? data.moodText.value : this.moodText,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MoodLogData(')
          ..write('moodId: $moodId, ')
          ..write('moodDate: $moodDate, ')
          ..write('moodTime: $moodTime, ')
          ..write('moodRating: $moodRating, ')
          ..write('moodText: $moodText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(moodId, moodDate, moodTime, moodRating, moodText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoodLogData &&
          other.moodId == this.moodId &&
          other.moodDate == this.moodDate &&
          other.moodTime == this.moodTime &&
          other.moodRating == this.moodRating &&
          other.moodText == this.moodText);
}

class MoodLogCompanion extends UpdateCompanion<MoodLogData> {
  final Value<int> moodId;
  final Value<DateTime> moodDate;
  final Value<double> moodTime;
  final Value<int> moodRating;
  final Value<String?> moodText;
  const MoodLogCompanion({
    this.moodId = const Value.absent(),
    this.moodDate = const Value.absent(),
    this.moodTime = const Value.absent(),
    this.moodRating = const Value.absent(),
    this.moodText = const Value.absent(),
  });
  MoodLogCompanion.insert({
    this.moodId = const Value.absent(),
    required DateTime moodDate,
    required double moodTime,
    required int moodRating,
    this.moodText = const Value.absent(),
  })  : moodDate = Value(moodDate),
        moodTime = Value(moodTime),
        moodRating = Value(moodRating);
  static Insertable<MoodLogData> custom({
    Expression<int>? moodId,
    Expression<DateTime>? moodDate,
    Expression<double>? moodTime,
    Expression<int>? moodRating,
    Expression<String>? moodText,
  }) {
    return RawValuesInsertable({
      if (moodId != null) 'mood_id': moodId,
      if (moodDate != null) 'mood_date': moodDate,
      if (moodTime != null) 'mood_time': moodTime,
      if (moodRating != null) 'mood_rating': moodRating,
      if (moodText != null) 'mood_text': moodText,
    });
  }

  MoodLogCompanion copyWith(
      {Value<int>? moodId,
      Value<DateTime>? moodDate,
      Value<double>? moodTime,
      Value<int>? moodRating,
      Value<String?>? moodText}) {
    return MoodLogCompanion(
      moodId: moodId ?? this.moodId,
      moodDate: moodDate ?? this.moodDate,
      moodTime: moodTime ?? this.moodTime,
      moodRating: moodRating ?? this.moodRating,
      moodText: moodText ?? this.moodText,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (moodId.present) {
      map['mood_id'] = Variable<int>(moodId.value);
    }
    if (moodDate.present) {
      map['mood_date'] = Variable<DateTime>(moodDate.value);
    }
    if (moodTime.present) {
      map['mood_time'] = Variable<double>(moodTime.value);
    }
    if (moodRating.present) {
      map['mood_rating'] = Variable<int>(moodRating.value);
    }
    if (moodText.present) {
      map['mood_text'] = Variable<String>(moodText.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoodLogCompanion(')
          ..write('moodId: $moodId, ')
          ..write('moodDate: $moodDate, ')
          ..write('moodTime: $moodTime, ')
          ..write('moodRating: $moodRating, ')
          ..write('moodText: $moodText')
          ..write(')'))
        .toString();
  }
}

class Goals extends Table with TableInfo<Goals, Goal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Goals(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _goalIdMeta = const VerificationMeta('goalId');
  late final GeneratedColumn<int> goalId = GeneratedColumn<int>(
      'goal_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _plantIdMeta =
      const VerificationMeta('plantId');
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
      'plant_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _goalNameMeta =
      const VerificationMeta('goalName');
  late final GeneratedColumn<String> goalName = GeneratedColumn<String>(
      'goal_name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _goalDescMeta =
      const VerificationMeta('goalDesc');
  late final GeneratedColumn<String> goalDesc = GeneratedColumn<String>(
      'goal_desc', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _goalAchievementMeta =
      const VerificationMeta('goalAchievement');
  late final GeneratedColumn<bool> goalAchievement = GeneratedColumn<bool>(
      'goal_achievement', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [goalId, plantId, goalName, goalDesc, goalAchievement];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'goals';
  @override
  VerificationContext validateIntegrity(Insertable<Goal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('goal_id')) {
      context.handle(_goalIdMeta,
          goalId.isAcceptableOrUnknown(data['goal_id']!, _goalIdMeta));
    }
    if (data.containsKey('plant_id')) {
      context.handle(_plantIdMeta,
          plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta));
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('goal_name')) {
      context.handle(_goalNameMeta,
          goalName.isAcceptableOrUnknown(data['goal_name']!, _goalNameMeta));
    } else if (isInserting) {
      context.missing(_goalNameMeta);
    }
    if (data.containsKey('goal_desc')) {
      context.handle(_goalDescMeta,
          goalDesc.isAcceptableOrUnknown(data['goal_desc']!, _goalDescMeta));
    }
    if (data.containsKey('goal_achievement')) {
      context.handle(
          _goalAchievementMeta,
          goalAchievement.isAcceptableOrUnknown(
              data['goal_achievement']!, _goalAchievementMeta));
    } else if (isInserting) {
      context.missing(_goalAchievementMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {goalId};
  @override
  Goal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Goal(
      goalId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}goal_id'])!,
      plantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}plant_id'])!,
      goalName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}goal_name'])!,
      goalDesc: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}goal_desc']),
      goalAchievement: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}goal_achievement'])!,
    );
  }

  @override
  Goals createAlias(String alias) {
    return Goals(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Goal extends DataClass implements Insertable<Goal> {
  final int goalId;
  final int plantId;
  final String goalName;
  final String? goalDesc;
  final bool goalAchievement;
  const Goal(
      {required this.goalId,
      required this.plantId,
      required this.goalName,
      this.goalDesc,
      required this.goalAchievement});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['goal_id'] = Variable<int>(goalId);
    map['plant_id'] = Variable<int>(plantId);
    map['goal_name'] = Variable<String>(goalName);
    if (!nullToAbsent || goalDesc != null) {
      map['goal_desc'] = Variable<String>(goalDesc);
    }
    map['goal_achievement'] = Variable<bool>(goalAchievement);
    return map;
  }

  GoalsCompanion toCompanion(bool nullToAbsent) {
    return GoalsCompanion(
      goalId: Value(goalId),
      plantId: Value(plantId),
      goalName: Value(goalName),
      goalDesc: goalDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(goalDesc),
      goalAchievement: Value(goalAchievement),
    );
  }

  factory Goal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Goal(
      goalId: serializer.fromJson<int>(json['goal_id']),
      plantId: serializer.fromJson<int>(json['plant_id']),
      goalName: serializer.fromJson<String>(json['goal_name']),
      goalDesc: serializer.fromJson<String?>(json['goal_desc']),
      goalAchievement: serializer.fromJson<bool>(json['goal_achievement']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'goal_id': serializer.toJson<int>(goalId),
      'plant_id': serializer.toJson<int>(plantId),
      'goal_name': serializer.toJson<String>(goalName),
      'goal_desc': serializer.toJson<String?>(goalDesc),
      'goal_achievement': serializer.toJson<bool>(goalAchievement),
    };
  }

  Goal copyWith(
          {int? goalId,
          int? plantId,
          String? goalName,
          Value<String?> goalDesc = const Value.absent(),
          bool? goalAchievement}) =>
      Goal(
        goalId: goalId ?? this.goalId,
        plantId: plantId ?? this.plantId,
        goalName: goalName ?? this.goalName,
        goalDesc: goalDesc.present ? goalDesc.value : this.goalDesc,
        goalAchievement: goalAchievement ?? this.goalAchievement,
      );
  Goal copyWithCompanion(GoalsCompanion data) {
    return Goal(
      goalId: data.goalId.present ? data.goalId.value : this.goalId,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      goalName: data.goalName.present ? data.goalName.value : this.goalName,
      goalDesc: data.goalDesc.present ? data.goalDesc.value : this.goalDesc,
      goalAchievement: data.goalAchievement.present
          ? data.goalAchievement.value
          : this.goalAchievement,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Goal(')
          ..write('goalId: $goalId, ')
          ..write('plantId: $plantId, ')
          ..write('goalName: $goalName, ')
          ..write('goalDesc: $goalDesc, ')
          ..write('goalAchievement: $goalAchievement')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(goalId, plantId, goalName, goalDesc, goalAchievement);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Goal &&
          other.goalId == this.goalId &&
          other.plantId == this.plantId &&
          other.goalName == this.goalName &&
          other.goalDesc == this.goalDesc &&
          other.goalAchievement == this.goalAchievement);
}

class GoalsCompanion extends UpdateCompanion<Goal> {
  final Value<int> goalId;
  final Value<int> plantId;
  final Value<String> goalName;
  final Value<String?> goalDesc;
  final Value<bool> goalAchievement;
  const GoalsCompanion({
    this.goalId = const Value.absent(),
    this.plantId = const Value.absent(),
    this.goalName = const Value.absent(),
    this.goalDesc = const Value.absent(),
    this.goalAchievement = const Value.absent(),
  });
  GoalsCompanion.insert({
    this.goalId = const Value.absent(),
    required int plantId,
    required String goalName,
    this.goalDesc = const Value.absent(),
    required bool goalAchievement,
  })  : plantId = Value(plantId),
        goalName = Value(goalName),
        goalAchievement = Value(goalAchievement);
  static Insertable<Goal> custom({
    Expression<int>? goalId,
    Expression<int>? plantId,
    Expression<String>? goalName,
    Expression<String>? goalDesc,
    Expression<bool>? goalAchievement,
  }) {
    return RawValuesInsertable({
      if (goalId != null) 'goal_id': goalId,
      if (plantId != null) 'plant_id': plantId,
      if (goalName != null) 'goal_name': goalName,
      if (goalDesc != null) 'goal_desc': goalDesc,
      if (goalAchievement != null) 'goal_achievement': goalAchievement,
    });
  }

  GoalsCompanion copyWith(
      {Value<int>? goalId,
      Value<int>? plantId,
      Value<String>? goalName,
      Value<String?>? goalDesc,
      Value<bool>? goalAchievement}) {
    return GoalsCompanion(
      goalId: goalId ?? this.goalId,
      plantId: plantId ?? this.plantId,
      goalName: goalName ?? this.goalName,
      goalDesc: goalDesc ?? this.goalDesc,
      goalAchievement: goalAchievement ?? this.goalAchievement,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (goalId.present) {
      map['goal_id'] = Variable<int>(goalId.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (goalName.present) {
      map['goal_name'] = Variable<String>(goalName.value);
    }
    if (goalDesc.present) {
      map['goal_desc'] = Variable<String>(goalDesc.value);
    }
    if (goalAchievement.present) {
      map['goal_achievement'] = Variable<bool>(goalAchievement.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GoalsCompanion(')
          ..write('goalId: $goalId, ')
          ..write('plantId: $plantId, ')
          ..write('goalName: $goalName, ')
          ..write('goalDesc: $goalDesc, ')
          ..write('goalAchievement: $goalAchievement')
          ..write(')'))
        .toString();
  }
}

class Entries extends Table with TableInfo<Entries, Entry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Entries(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _entryIdMeta =
      const VerificationMeta('entryId');
  late final GeneratedColumn<int> entryId = GeneratedColumn<int>(
      'entry_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _entryMeta = const VerificationMeta('entry');
  late final GeneratedColumn<String> entry = GeneratedColumn<String>(
      'entry', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _entryDateMeta =
      const VerificationMeta('entryDate');
  late final GeneratedColumn<DateTime> entryDate = GeneratedColumn<DateTime>(
      'entry_date', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _entryTimeMeta =
      const VerificationMeta('entryTime');
  late final GeneratedColumn<double> entryTime = GeneratedColumn<double>(
      'entry_time', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  late final GeneratedColumn<int> rating = GeneratedColumn<int>(
      'rating', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'CHECK (rating >= 0 AND rating <= 5)');
  @override
  List<GeneratedColumn> get $columns =>
      [entryId, entry, entryDate, entryTime, rating];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'entries';
  @override
  VerificationContext validateIntegrity(Insertable<Entry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('entry_id')) {
      context.handle(_entryIdMeta,
          entryId.isAcceptableOrUnknown(data['entry_id']!, _entryIdMeta));
    }
    if (data.containsKey('entry')) {
      context.handle(
          _entryMeta, entry.isAcceptableOrUnknown(data['entry']!, _entryMeta));
    }
    if (data.containsKey('entry_date')) {
      context.handle(_entryDateMeta,
          entryDate.isAcceptableOrUnknown(data['entry_date']!, _entryDateMeta));
    } else if (isInserting) {
      context.missing(_entryDateMeta);
    }
    if (data.containsKey('entry_time')) {
      context.handle(_entryTimeMeta,
          entryTime.isAcceptableOrUnknown(data['entry_time']!, _entryTimeMeta));
    } else if (isInserting) {
      context.missing(_entryTimeMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {entryId};
  @override
  Entry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Entry(
      entryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}entry_id'])!,
      entry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entry']),
      entryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}entry_date'])!,
      entryTime: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}entry_time'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating']),
    );
  }

  @override
  Entries createAlias(String alias) {
    return Entries(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Entry extends DataClass implements Insertable<Entry> {
  final int entryId;
  final String? entry;
  final DateTime entryDate;
  final double entryTime;
  final int? rating;
  const Entry(
      {required this.entryId,
      this.entry,
      required this.entryDate,
      required this.entryTime,
      this.rating});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['entry_id'] = Variable<int>(entryId);
    if (!nullToAbsent || entry != null) {
      map['entry'] = Variable<String>(entry);
    }
    map['entry_date'] = Variable<DateTime>(entryDate);
    map['entry_time'] = Variable<double>(entryTime);
    if (!nullToAbsent || rating != null) {
      map['rating'] = Variable<int>(rating);
    }
    return map;
  }

  EntriesCompanion toCompanion(bool nullToAbsent) {
    return EntriesCompanion(
      entryId: Value(entryId),
      entry:
          entry == null && nullToAbsent ? const Value.absent() : Value(entry),
      entryDate: Value(entryDate),
      entryTime: Value(entryTime),
      rating:
          rating == null && nullToAbsent ? const Value.absent() : Value(rating),
    );
  }

  factory Entry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Entry(
      entryId: serializer.fromJson<int>(json['entry_id']),
      entry: serializer.fromJson<String?>(json['entry']),
      entryDate: serializer.fromJson<DateTime>(json['entry_date']),
      entryTime: serializer.fromJson<double>(json['entry_time']),
      rating: serializer.fromJson<int?>(json['rating']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'entry_id': serializer.toJson<int>(entryId),
      'entry': serializer.toJson<String?>(entry),
      'entry_date': serializer.toJson<DateTime>(entryDate),
      'entry_time': serializer.toJson<double>(entryTime),
      'rating': serializer.toJson<int?>(rating),
    };
  }

  Entry copyWith(
          {int? entryId,
          Value<String?> entry = const Value.absent(),
          DateTime? entryDate,
          double? entryTime,
          Value<int?> rating = const Value.absent()}) =>
      Entry(
        entryId: entryId ?? this.entryId,
        entry: entry.present ? entry.value : this.entry,
        entryDate: entryDate ?? this.entryDate,
        entryTime: entryTime ?? this.entryTime,
        rating: rating.present ? rating.value : this.rating,
      );
  Entry copyWithCompanion(EntriesCompanion data) {
    return Entry(
      entryId: data.entryId.present ? data.entryId.value : this.entryId,
      entry: data.entry.present ? data.entry.value : this.entry,
      entryDate: data.entryDate.present ? data.entryDate.value : this.entryDate,
      entryTime: data.entryTime.present ? data.entryTime.value : this.entryTime,
      rating: data.rating.present ? data.rating.value : this.rating,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Entry(')
          ..write('entryId: $entryId, ')
          ..write('entry: $entry, ')
          ..write('entryDate: $entryDate, ')
          ..write('entryTime: $entryTime, ')
          ..write('rating: $rating')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(entryId, entry, entryDate, entryTime, rating);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Entry &&
          other.entryId == this.entryId &&
          other.entry == this.entry &&
          other.entryDate == this.entryDate &&
          other.entryTime == this.entryTime &&
          other.rating == this.rating);
}

class EntriesCompanion extends UpdateCompanion<Entry> {
  final Value<int> entryId;
  final Value<String?> entry;
  final Value<DateTime> entryDate;
  final Value<double> entryTime;
  final Value<int?> rating;
  const EntriesCompanion({
    this.entryId = const Value.absent(),
    this.entry = const Value.absent(),
    this.entryDate = const Value.absent(),
    this.entryTime = const Value.absent(),
    this.rating = const Value.absent(),
  });
  EntriesCompanion.insert({
    this.entryId = const Value.absent(),
    this.entry = const Value.absent(),
    required DateTime entryDate,
    required double entryTime,
    this.rating = const Value.absent(),
  })  : entryDate = Value(entryDate),
        entryTime = Value(entryTime);
  static Insertable<Entry> custom({
    Expression<int>? entryId,
    Expression<String>? entry,
    Expression<DateTime>? entryDate,
    Expression<double>? entryTime,
    Expression<int>? rating,
  }) {
    return RawValuesInsertable({
      if (entryId != null) 'entry_id': entryId,
      if (entry != null) 'entry': entry,
      if (entryDate != null) 'entry_date': entryDate,
      if (entryTime != null) 'entry_time': entryTime,
      if (rating != null) 'rating': rating,
    });
  }

  EntriesCompanion copyWith(
      {Value<int>? entryId,
      Value<String?>? entry,
      Value<DateTime>? entryDate,
      Value<double>? entryTime,
      Value<int?>? rating}) {
    return EntriesCompanion(
      entryId: entryId ?? this.entryId,
      entry: entry ?? this.entry,
      entryDate: entryDate ?? this.entryDate,
      entryTime: entryTime ?? this.entryTime,
      rating: rating ?? this.rating,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (entryId.present) {
      map['entry_id'] = Variable<int>(entryId.value);
    }
    if (entry.present) {
      map['entry'] = Variable<String>(entry.value);
    }
    if (entryDate.present) {
      map['entry_date'] = Variable<DateTime>(entryDate.value);
    }
    if (entryTime.present) {
      map['entry_time'] = Variable<double>(entryTime.value);
    }
    if (rating.present) {
      map['rating'] = Variable<int>(rating.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntriesCompanion(')
          ..write('entryId: $entryId, ')
          ..write('entry: $entry, ')
          ..write('entryDate: $entryDate, ')
          ..write('entryTime: $entryTime, ')
          ..write('rating: $rating')
          ..write(')'))
        .toString();
  }
}

class Plant extends Table with TableInfo<Plant, PlantData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Plant(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _plantIdMeta =
      const VerificationMeta('plantId');
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
      'plant_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _plantTypeMeta =
      const VerificationMeta('plantType');
  late final GeneratedColumn<String> plantType = GeneratedColumn<String>(
      'plant_type', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [plantId, plantType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'plant';
  @override
  VerificationContext validateIntegrity(Insertable<PlantData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('plant_id')) {
      context.handle(_plantIdMeta,
          plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta));
    }
    if (data.containsKey('plant_type')) {
      context.handle(_plantTypeMeta,
          plantType.isAcceptableOrUnknown(data['plant_type']!, _plantTypeMeta));
    } else if (isInserting) {
      context.missing(_plantTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {plantId};
  @override
  PlantData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlantData(
      plantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}plant_id'])!,
      plantType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}plant_type'])!,
    );
  }

  @override
  Plant createAlias(String alias) {
    return Plant(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class PlantData extends DataClass implements Insertable<PlantData> {
  final int plantId;
  final String plantType;
  const PlantData({required this.plantId, required this.plantType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['plant_id'] = Variable<int>(plantId);
    map['plant_type'] = Variable<String>(plantType);
    return map;
  }

  PlantCompanion toCompanion(bool nullToAbsent) {
    return PlantCompanion(
      plantId: Value(plantId),
      plantType: Value(plantType),
    );
  }

  factory PlantData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PlantData(
      plantId: serializer.fromJson<int>(json['plant_id']),
      plantType: serializer.fromJson<String>(json['plant_type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'plant_id': serializer.toJson<int>(plantId),
      'plant_type': serializer.toJson<String>(plantType),
    };
  }

  PlantData copyWith({int? plantId, String? plantType}) => PlantData(
        plantId: plantId ?? this.plantId,
        plantType: plantType ?? this.plantType,
      );
  PlantData copyWithCompanion(PlantCompanion data) {
    return PlantData(
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      plantType: data.plantType.present ? data.plantType.value : this.plantType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PlantData(')
          ..write('plantId: $plantId, ')
          ..write('plantType: $plantType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(plantId, plantType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PlantData &&
          other.plantId == this.plantId &&
          other.plantType == this.plantType);
}

class PlantCompanion extends UpdateCompanion<PlantData> {
  final Value<int> plantId;
  final Value<String> plantType;
  const PlantCompanion({
    this.plantId = const Value.absent(),
    this.plantType = const Value.absent(),
  });
  PlantCompanion.insert({
    this.plantId = const Value.absent(),
    required String plantType,
  }) : plantType = Value(plantType);
  static Insertable<PlantData> custom({
    Expression<int>? plantId,
    Expression<String>? plantType,
  }) {
    return RawValuesInsertable({
      if (plantId != null) 'plant_id': plantId,
      if (plantType != null) 'plant_type': plantType,
    });
  }

  PlantCompanion copyWith({Value<int>? plantId, Value<String>? plantType}) {
    return PlantCompanion(
      plantId: plantId ?? this.plantId,
      plantType: plantType ?? this.plantType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (plantType.present) {
      map['plant_type'] = Variable<String>(plantType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlantCompanion(')
          ..write('plantId: $plantId, ')
          ..write('plantType: $plantType')
          ..write(')'))
        .toString();
  }
}

class UserEntries extends Table with TableInfo<UserEntries, UserEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  UserEntries(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _entryIdMeta =
      const VerificationMeta('entryId');
  late final GeneratedColumn<int> entryId = GeneratedColumn<int>(
      'entry_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [userId, entryId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_entries';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('entry_id')) {
      context.handle(_entryIdMeta,
          entryId.isAcceptableOrUnknown(data['entry_id']!, _entryIdMeta));
    } else if (isInserting) {
      context.missing(_entryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntry(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      entryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}entry_id'])!,
    );
  }

  @override
  UserEntries createAlias(String alias) {
    return UserEntries(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [
        'FOREIGN KEY(user_id)REFERENCES users(userId)',
        'FOREIGN KEY(entry_id)REFERENCES entries(entry_id)'
      ];
  @override
  bool get dontWriteConstraints => true;
}

class UserEntry extends DataClass implements Insertable<UserEntry> {
  final int userId;
  final int entryId;
  const UserEntry({required this.userId, required this.entryId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<int>(userId);
    map['entry_id'] = Variable<int>(entryId);
    return map;
  }

  UserEntriesCompanion toCompanion(bool nullToAbsent) {
    return UserEntriesCompanion(
      userId: Value(userId),
      entryId: Value(entryId),
    );
  }

  factory UserEntry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntry(
      userId: serializer.fromJson<int>(json['user_id']),
      entryId: serializer.fromJson<int>(json['entry_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'user_id': serializer.toJson<int>(userId),
      'entry_id': serializer.toJson<int>(entryId),
    };
  }

  UserEntry copyWith({int? userId, int? entryId}) => UserEntry(
        userId: userId ?? this.userId,
        entryId: entryId ?? this.entryId,
      );
  UserEntry copyWithCompanion(UserEntriesCompanion data) {
    return UserEntry(
      userId: data.userId.present ? data.userId.value : this.userId,
      entryId: data.entryId.present ? data.entryId.value : this.entryId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserEntry(')
          ..write('userId: $userId, ')
          ..write('entryId: $entryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, entryId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntry &&
          other.userId == this.userId &&
          other.entryId == this.entryId);
}

class UserEntriesCompanion extends UpdateCompanion<UserEntry> {
  final Value<int> userId;
  final Value<int> entryId;
  final Value<int> rowid;
  const UserEntriesCompanion({
    this.userId = const Value.absent(),
    this.entryId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserEntriesCompanion.insert({
    required int userId,
    required int entryId,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        entryId = Value(entryId);
  static Insertable<UserEntry> custom({
    Expression<int>? userId,
    Expression<int>? entryId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (entryId != null) 'entry_id': entryId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserEntriesCompanion copyWith(
      {Value<int>? userId, Value<int>? entryId, Value<int>? rowid}) {
    return UserEntriesCompanion(
      userId: userId ?? this.userId,
      entryId: entryId ?? this.entryId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (entryId.present) {
      map['entry_id'] = Variable<int>(entryId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserEntriesCompanion(')
          ..write('userId: $userId, ')
          ..write('entryId: $entryId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class Garden extends Table with TableInfo<Garden, GardenData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Garden(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _gardenSlotMeta =
      const VerificationMeta('gardenSlot');
  late final GeneratedColumn<int> gardenSlot = GeneratedColumn<int>(
      'garden_slot', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL PRIMARY KEY AUTOINCREMENT');
  static const VerificationMeta _plantIdMeta =
      const VerificationMeta('plantId');
  late final GeneratedColumn<int> plantId = GeneratedColumn<int>(
      'plant_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _archivedMeta =
      const VerificationMeta('archived');
  late final GeneratedColumn<bool> archived = GeneratedColumn<bool>(
      'archived', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _maturityMeta =
      const VerificationMeta('maturity');
  late final GeneratedColumn<int> maturity = GeneratedColumn<int>(
      'maturity', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  static const VerificationMeta _lastWateredMeta =
      const VerificationMeta('lastWatered');
  late final GeneratedColumn<DateTime> lastWatered = GeneratedColumn<DateTime>(
      'last_watered', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [gardenSlot, plantId, name, archived, maturity, lastWatered];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'garden';
  @override
  VerificationContext validateIntegrity(Insertable<GardenData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('garden_slot')) {
      context.handle(
          _gardenSlotMeta,
          gardenSlot.isAcceptableOrUnknown(
              data['garden_slot']!, _gardenSlotMeta));
    }
    if (data.containsKey('plant_id')) {
      context.handle(_plantIdMeta,
          plantId.isAcceptableOrUnknown(data['plant_id']!, _plantIdMeta));
    } else if (isInserting) {
      context.missing(_plantIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('archived')) {
      context.handle(_archivedMeta,
          archived.isAcceptableOrUnknown(data['archived']!, _archivedMeta));
    } else if (isInserting) {
      context.missing(_archivedMeta);
    }
    if (data.containsKey('maturity')) {
      context.handle(_maturityMeta,
          maturity.isAcceptableOrUnknown(data['maturity']!, _maturityMeta));
    } else if (isInserting) {
      context.missing(_maturityMeta);
    }
    if (data.containsKey('last_watered')) {
      context.handle(
          _lastWateredMeta,
          lastWatered.isAcceptableOrUnknown(
              data['last_watered']!, _lastWateredMeta));
    } else if (isInserting) {
      context.missing(_lastWateredMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {gardenSlot};
  @override
  GardenData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GardenData(
      gardenSlot: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}garden_slot'])!,
      plantId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}plant_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      archived: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}archived'])!,
      maturity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}maturity'])!,
      lastWatered: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}last_watered'])!,
    );
  }

  @override
  Garden createAlias(String alias) {
    return Garden(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints =>
      const ['FOREIGN KEY(plant_id)REFERENCES plant(plant_id)'];
  @override
  bool get dontWriteConstraints => true;
}

class GardenData extends DataClass implements Insertable<GardenData> {
  final int gardenSlot;
  final int plantId;
  final String name;
  final bool archived;
  final int maturity;
  final DateTime lastWatered;
  const GardenData(
      {required this.gardenSlot,
      required this.plantId,
      required this.name,
      required this.archived,
      required this.maturity,
      required this.lastWatered});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['garden_slot'] = Variable<int>(gardenSlot);
    map['plant_id'] = Variable<int>(plantId);
    map['name'] = Variable<String>(name);
    map['archived'] = Variable<bool>(archived);
    map['maturity'] = Variable<int>(maturity);
    map['last_watered'] = Variable<DateTime>(lastWatered);
    return map;
  }

  GardenCompanion toCompanion(bool nullToAbsent) {
    return GardenCompanion(
      gardenSlot: Value(gardenSlot),
      plantId: Value(plantId),
      name: Value(name),
      archived: Value(archived),
      maturity: Value(maturity),
      lastWatered: Value(lastWatered),
    );
  }

  factory GardenData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GardenData(
      gardenSlot: serializer.fromJson<int>(json['garden_slot']),
      plantId: serializer.fromJson<int>(json['plant_id']),
      name: serializer.fromJson<String>(json['name']),
      archived: serializer.fromJson<bool>(json['archived']),
      maturity: serializer.fromJson<int>(json['maturity']),
      lastWatered: serializer.fromJson<DateTime>(json['last_watered']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'garden_slot': serializer.toJson<int>(gardenSlot),
      'plant_id': serializer.toJson<int>(plantId),
      'name': serializer.toJson<String>(name),
      'archived': serializer.toJson<bool>(archived),
      'maturity': serializer.toJson<int>(maturity),
      'last_watered': serializer.toJson<DateTime>(lastWatered),
    };
  }

  GardenData copyWith(
          {int? gardenSlot,
          int? plantId,
          String? name,
          bool? archived,
          int? maturity,
          DateTime? lastWatered}) =>
      GardenData(
        gardenSlot: gardenSlot ?? this.gardenSlot,
        plantId: plantId ?? this.plantId,
        name: name ?? this.name,
        archived: archived ?? this.archived,
        maturity: maturity ?? this.maturity,
        lastWatered: lastWatered ?? this.lastWatered,
      );
  GardenData copyWithCompanion(GardenCompanion data) {
    return GardenData(
      gardenSlot:
          data.gardenSlot.present ? data.gardenSlot.value : this.gardenSlot,
      plantId: data.plantId.present ? data.plantId.value : this.plantId,
      name: data.name.present ? data.name.value : this.name,
      archived: data.archived.present ? data.archived.value : this.archived,
      maturity: data.maturity.present ? data.maturity.value : this.maturity,
      lastWatered:
          data.lastWatered.present ? data.lastWatered.value : this.lastWatered,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GardenData(')
          ..write('gardenSlot: $gardenSlot, ')
          ..write('plantId: $plantId, ')
          ..write('name: $name, ')
          ..write('archived: $archived, ')
          ..write('maturity: $maturity, ')
          ..write('lastWatered: $lastWatered')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(gardenSlot, plantId, name, archived, maturity, lastWatered);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GardenData &&
          other.gardenSlot == this.gardenSlot &&
          other.plantId == this.plantId &&
          other.name == this.name &&
          other.archived == this.archived &&
          other.maturity == this.maturity &&
          other.lastWatered == this.lastWatered);
}

class GardenCompanion extends UpdateCompanion<GardenData> {
  final Value<int> gardenSlot;
  final Value<int> plantId;
  final Value<String> name;
  final Value<bool> archived;
  final Value<int> maturity;
  final Value<DateTime> lastWatered;
  const GardenCompanion({
    this.gardenSlot = const Value.absent(),
    this.plantId = const Value.absent(),
    this.name = const Value.absent(),
    this.archived = const Value.absent(),
    this.maturity = const Value.absent(),
    this.lastWatered = const Value.absent(),
  });
  GardenCompanion.insert({
    this.gardenSlot = const Value.absent(),
    required int plantId,
    required String name,
    required bool archived,
    required int maturity,
    required DateTime lastWatered,
  })  : plantId = Value(plantId),
        name = Value(name),
        archived = Value(archived),
        maturity = Value(maturity),
        lastWatered = Value(lastWatered);
  static Insertable<GardenData> custom({
    Expression<int>? gardenSlot,
    Expression<int>? plantId,
    Expression<String>? name,
    Expression<bool>? archived,
    Expression<int>? maturity,
    Expression<DateTime>? lastWatered,
  }) {
    return RawValuesInsertable({
      if (gardenSlot != null) 'garden_slot': gardenSlot,
      if (plantId != null) 'plant_id': plantId,
      if (name != null) 'name': name,
      if (archived != null) 'archived': archived,
      if (maturity != null) 'maturity': maturity,
      if (lastWatered != null) 'last_watered': lastWatered,
    });
  }

  GardenCompanion copyWith(
      {Value<int>? gardenSlot,
      Value<int>? plantId,
      Value<String>? name,
      Value<bool>? archived,
      Value<int>? maturity,
      Value<DateTime>? lastWatered}) {
    return GardenCompanion(
      gardenSlot: gardenSlot ?? this.gardenSlot,
      plantId: plantId ?? this.plantId,
      name: name ?? this.name,
      archived: archived ?? this.archived,
      maturity: maturity ?? this.maturity,
      lastWatered: lastWatered ?? this.lastWatered,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (gardenSlot.present) {
      map['garden_slot'] = Variable<int>(gardenSlot.value);
    }
    if (plantId.present) {
      map['plant_id'] = Variable<int>(plantId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (archived.present) {
      map['archived'] = Variable<bool>(archived.value);
    }
    if (maturity.present) {
      map['maturity'] = Variable<int>(maturity.value);
    }
    if (lastWatered.present) {
      map['last_watered'] = Variable<DateTime>(lastWatered.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GardenCompanion(')
          ..write('gardenSlot: $gardenSlot, ')
          ..write('plantId: $plantId, ')
          ..write('name: $name, ')
          ..write('archived: $archived, ')
          ..write('maturity: $maturity, ')
          ..write('lastWatered: $lastWatered')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  $MyDatabaseManager get managers => $MyDatabaseManager(this);
  late final Users users = Users(this);
  late final MoodLog moodLog = MoodLog(this);
  late final Goals goals = Goals(this);
  late final Entries entries = Entries(this);
  late final Plant plant = Plant(this);
  late final UserEntries userEntries = UserEntries(this);
  late final Garden garden = Garden(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [users, moodLog, goals, entries, plant, userEntries, garden];
}

typedef $UsersCreateCompanionBuilder = UsersCompanion Function({
  Value<int> userId,
  required int plantId,
  required String username,
  required int level,
  required int exp,
});
typedef $UsersUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> userId,
  Value<int> plantId,
  Value<String> username,
  Value<int> level,
  Value<int> exp,
});

class $UsersFilterComposer extends Composer<_$MyDatabase, Users> {
  $UsersFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get exp => $composableBuilder(
      column: $table.exp, builder: (column) => ColumnFilters(column));
}

class $UsersOrderingComposer extends Composer<_$MyDatabase, Users> {
  $UsersOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get level => $composableBuilder(
      column: $table.level, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get exp => $composableBuilder(
      column: $table.exp, builder: (column) => ColumnOrderings(column));
}

class $UsersAnnotationComposer extends Composer<_$MyDatabase, Users> {
  $UsersAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<int> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<int> get level =>
      $composableBuilder(column: $table.level, builder: (column) => column);

  GeneratedColumn<int> get exp =>
      $composableBuilder(column: $table.exp, builder: (column) => column);
}

class $UsersTableManager extends RootTableManager<
    _$MyDatabase,
    Users,
    User,
    $UsersFilterComposer,
    $UsersOrderingComposer,
    $UsersAnnotationComposer,
    $UsersCreateCompanionBuilder,
    $UsersUpdateCompanionBuilder,
    (User, BaseReferences<_$MyDatabase, Users, User>),
    User,
    PrefetchHooks Function()> {
  $UsersTableManager(_$MyDatabase db, Users table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $UsersFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $UsersOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $UsersAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<int> plantId = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<int> level = const Value.absent(),
            Value<int> exp = const Value.absent(),
          }) =>
              UsersCompanion(
            userId: userId,
            plantId: plantId,
            username: username,
            level: level,
            exp: exp,
          ),
          createCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            required int plantId,
            required String username,
            required int level,
            required int exp,
          }) =>
              UsersCompanion.insert(
            userId: userId,
            plantId: plantId,
            username: username,
            level: level,
            exp: exp,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $UsersProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Users,
    User,
    $UsersFilterComposer,
    $UsersOrderingComposer,
    $UsersAnnotationComposer,
    $UsersCreateCompanionBuilder,
    $UsersUpdateCompanionBuilder,
    (User, BaseReferences<_$MyDatabase, Users, User>),
    User,
    PrefetchHooks Function()>;
typedef $MoodLogCreateCompanionBuilder = MoodLogCompanion Function({
  Value<int> moodId,
  required DateTime moodDate,
  required double moodTime,
  required int moodRating,
  Value<String?> moodText,
});
typedef $MoodLogUpdateCompanionBuilder = MoodLogCompanion Function({
  Value<int> moodId,
  Value<DateTime> moodDate,
  Value<double> moodTime,
  Value<int> moodRating,
  Value<String?> moodText,
});

class $MoodLogFilterComposer extends Composer<_$MyDatabase, MoodLog> {
  $MoodLogFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get moodId => $composableBuilder(
      column: $table.moodId, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get moodDate => $composableBuilder(
      column: $table.moodDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get moodTime => $composableBuilder(
      column: $table.moodTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get moodRating => $composableBuilder(
      column: $table.moodRating, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get moodText => $composableBuilder(
      column: $table.moodText, builder: (column) => ColumnFilters(column));
}

class $MoodLogOrderingComposer extends Composer<_$MyDatabase, MoodLog> {
  $MoodLogOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get moodId => $composableBuilder(
      column: $table.moodId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get moodDate => $composableBuilder(
      column: $table.moodDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get moodTime => $composableBuilder(
      column: $table.moodTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get moodRating => $composableBuilder(
      column: $table.moodRating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get moodText => $composableBuilder(
      column: $table.moodText, builder: (column) => ColumnOrderings(column));
}

class $MoodLogAnnotationComposer extends Composer<_$MyDatabase, MoodLog> {
  $MoodLogAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get moodId =>
      $composableBuilder(column: $table.moodId, builder: (column) => column);

  GeneratedColumn<DateTime> get moodDate =>
      $composableBuilder(column: $table.moodDate, builder: (column) => column);

  GeneratedColumn<double> get moodTime =>
      $composableBuilder(column: $table.moodTime, builder: (column) => column);

  GeneratedColumn<int> get moodRating => $composableBuilder(
      column: $table.moodRating, builder: (column) => column);

  GeneratedColumn<String> get moodText =>
      $composableBuilder(column: $table.moodText, builder: (column) => column);
}

class $MoodLogTableManager extends RootTableManager<
    _$MyDatabase,
    MoodLog,
    MoodLogData,
    $MoodLogFilterComposer,
    $MoodLogOrderingComposer,
    $MoodLogAnnotationComposer,
    $MoodLogCreateCompanionBuilder,
    $MoodLogUpdateCompanionBuilder,
    (MoodLogData, BaseReferences<_$MyDatabase, MoodLog, MoodLogData>),
    MoodLogData,
    PrefetchHooks Function()> {
  $MoodLogTableManager(_$MyDatabase db, MoodLog table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $MoodLogFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $MoodLogOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $MoodLogAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> moodId = const Value.absent(),
            Value<DateTime> moodDate = const Value.absent(),
            Value<double> moodTime = const Value.absent(),
            Value<int> moodRating = const Value.absent(),
            Value<String?> moodText = const Value.absent(),
          }) =>
              MoodLogCompanion(
            moodId: moodId,
            moodDate: moodDate,
            moodTime: moodTime,
            moodRating: moodRating,
            moodText: moodText,
          ),
          createCompanionCallback: ({
            Value<int> moodId = const Value.absent(),
            required DateTime moodDate,
            required double moodTime,
            required int moodRating,
            Value<String?> moodText = const Value.absent(),
          }) =>
              MoodLogCompanion.insert(
            moodId: moodId,
            moodDate: moodDate,
            moodTime: moodTime,
            moodRating: moodRating,
            moodText: moodText,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $MoodLogProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    MoodLog,
    MoodLogData,
    $MoodLogFilterComposer,
    $MoodLogOrderingComposer,
    $MoodLogAnnotationComposer,
    $MoodLogCreateCompanionBuilder,
    $MoodLogUpdateCompanionBuilder,
    (MoodLogData, BaseReferences<_$MyDatabase, MoodLog, MoodLogData>),
    MoodLogData,
    PrefetchHooks Function()>;
typedef $GoalsCreateCompanionBuilder = GoalsCompanion Function({
  Value<int> goalId,
  required int plantId,
  required String goalName,
  Value<String?> goalDesc,
  required bool goalAchievement,
});
typedef $GoalsUpdateCompanionBuilder = GoalsCompanion Function({
  Value<int> goalId,
  Value<int> plantId,
  Value<String> goalName,
  Value<String?> goalDesc,
  Value<bool> goalAchievement,
});

class $GoalsFilterComposer extends Composer<_$MyDatabase, Goals> {
  $GoalsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get goalId => $composableBuilder(
      column: $table.goalId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get goalName => $composableBuilder(
      column: $table.goalName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get goalDesc => $composableBuilder(
      column: $table.goalDesc, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get goalAchievement => $composableBuilder(
      column: $table.goalAchievement,
      builder: (column) => ColumnFilters(column));
}

class $GoalsOrderingComposer extends Composer<_$MyDatabase, Goals> {
  $GoalsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get goalId => $composableBuilder(
      column: $table.goalId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get goalName => $composableBuilder(
      column: $table.goalName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get goalDesc => $composableBuilder(
      column: $table.goalDesc, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get goalAchievement => $composableBuilder(
      column: $table.goalAchievement,
      builder: (column) => ColumnOrderings(column));
}

class $GoalsAnnotationComposer extends Composer<_$MyDatabase, Goals> {
  $GoalsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get goalId =>
      $composableBuilder(column: $table.goalId, builder: (column) => column);

  GeneratedColumn<int> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<String> get goalName =>
      $composableBuilder(column: $table.goalName, builder: (column) => column);

  GeneratedColumn<String> get goalDesc =>
      $composableBuilder(column: $table.goalDesc, builder: (column) => column);

  GeneratedColumn<bool> get goalAchievement => $composableBuilder(
      column: $table.goalAchievement, builder: (column) => column);
}

class $GoalsTableManager extends RootTableManager<
    _$MyDatabase,
    Goals,
    Goal,
    $GoalsFilterComposer,
    $GoalsOrderingComposer,
    $GoalsAnnotationComposer,
    $GoalsCreateCompanionBuilder,
    $GoalsUpdateCompanionBuilder,
    (Goal, BaseReferences<_$MyDatabase, Goals, Goal>),
    Goal,
    PrefetchHooks Function()> {
  $GoalsTableManager(_$MyDatabase db, Goals table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $GoalsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $GoalsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $GoalsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> goalId = const Value.absent(),
            Value<int> plantId = const Value.absent(),
            Value<String> goalName = const Value.absent(),
            Value<String?> goalDesc = const Value.absent(),
            Value<bool> goalAchievement = const Value.absent(),
          }) =>
              GoalsCompanion(
            goalId: goalId,
            plantId: plantId,
            goalName: goalName,
            goalDesc: goalDesc,
            goalAchievement: goalAchievement,
          ),
          createCompanionCallback: ({
            Value<int> goalId = const Value.absent(),
            required int plantId,
            required String goalName,
            Value<String?> goalDesc = const Value.absent(),
            required bool goalAchievement,
          }) =>
              GoalsCompanion.insert(
            goalId: goalId,
            plantId: plantId,
            goalName: goalName,
            goalDesc: goalDesc,
            goalAchievement: goalAchievement,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $GoalsProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Goals,
    Goal,
    $GoalsFilterComposer,
    $GoalsOrderingComposer,
    $GoalsAnnotationComposer,
    $GoalsCreateCompanionBuilder,
    $GoalsUpdateCompanionBuilder,
    (Goal, BaseReferences<_$MyDatabase, Goals, Goal>),
    Goal,
    PrefetchHooks Function()>;
typedef $EntriesCreateCompanionBuilder = EntriesCompanion Function({
  Value<int> entryId,
  Value<String?> entry,
  required DateTime entryDate,
  required double entryTime,
  Value<int?> rating,
});
typedef $EntriesUpdateCompanionBuilder = EntriesCompanion Function({
  Value<int> entryId,
  Value<String?> entry,
  Value<DateTime> entryDate,
  Value<double> entryTime,
  Value<int?> rating,
});

class $EntriesFilterComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entry => $composableBuilder(
      column: $table.entry, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get entryDate => $composableBuilder(
      column: $table.entryDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get entryTime => $composableBuilder(
      column: $table.entryTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));
}

class $EntriesOrderingComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entry => $composableBuilder(
      column: $table.entry, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get entryDate => $composableBuilder(
      column: $table.entryDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get entryTime => $composableBuilder(
      column: $table.entryTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));
}

class $EntriesAnnotationComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get entryId =>
      $composableBuilder(column: $table.entryId, builder: (column) => column);

  GeneratedColumn<String> get entry =>
      $composableBuilder(column: $table.entry, builder: (column) => column);

  GeneratedColumn<DateTime> get entryDate =>
      $composableBuilder(column: $table.entryDate, builder: (column) => column);

  GeneratedColumn<double> get entryTime =>
      $composableBuilder(column: $table.entryTime, builder: (column) => column);

  GeneratedColumn<int> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);
}

class $EntriesTableManager extends RootTableManager<
    _$MyDatabase,
    Entries,
    Entry,
    $EntriesFilterComposer,
    $EntriesOrderingComposer,
    $EntriesAnnotationComposer,
    $EntriesCreateCompanionBuilder,
    $EntriesUpdateCompanionBuilder,
    (Entry, BaseReferences<_$MyDatabase, Entries, Entry>),
    Entry,
    PrefetchHooks Function()> {
  $EntriesTableManager(_$MyDatabase db, Entries table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $EntriesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $EntriesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $EntriesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> entryId = const Value.absent(),
            Value<String?> entry = const Value.absent(),
            Value<DateTime> entryDate = const Value.absent(),
            Value<double> entryTime = const Value.absent(),
            Value<int?> rating = const Value.absent(),
          }) =>
              EntriesCompanion(
            entryId: entryId,
            entry: entry,
            entryDate: entryDate,
            entryTime: entryTime,
            rating: rating,
          ),
          createCompanionCallback: ({
            Value<int> entryId = const Value.absent(),
            Value<String?> entry = const Value.absent(),
            required DateTime entryDate,
            required double entryTime,
            Value<int?> rating = const Value.absent(),
          }) =>
              EntriesCompanion.insert(
            entryId: entryId,
            entry: entry,
            entryDate: entryDate,
            entryTime: entryTime,
            rating: rating,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $EntriesProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Entries,
    Entry,
    $EntriesFilterComposer,
    $EntriesOrderingComposer,
    $EntriesAnnotationComposer,
    $EntriesCreateCompanionBuilder,
    $EntriesUpdateCompanionBuilder,
    (Entry, BaseReferences<_$MyDatabase, Entries, Entry>),
    Entry,
    PrefetchHooks Function()>;
typedef $PlantCreateCompanionBuilder = PlantCompanion Function({
  Value<int> plantId,
  required String plantType,
});
typedef $PlantUpdateCompanionBuilder = PlantCompanion Function({
  Value<int> plantId,
  Value<String> plantType,
});

class $PlantFilterComposer extends Composer<_$MyDatabase, Plant> {
  $PlantFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get plantType => $composableBuilder(
      column: $table.plantType, builder: (column) => ColumnFilters(column));
}

class $PlantOrderingComposer extends Composer<_$MyDatabase, Plant> {
  $PlantOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get plantType => $composableBuilder(
      column: $table.plantType, builder: (column) => ColumnOrderings(column));
}

class $PlantAnnotationComposer extends Composer<_$MyDatabase, Plant> {
  $PlantAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<String> get plantType =>
      $composableBuilder(column: $table.plantType, builder: (column) => column);
}

class $PlantTableManager extends RootTableManager<
    _$MyDatabase,
    Plant,
    PlantData,
    $PlantFilterComposer,
    $PlantOrderingComposer,
    $PlantAnnotationComposer,
    $PlantCreateCompanionBuilder,
    $PlantUpdateCompanionBuilder,
    (PlantData, BaseReferences<_$MyDatabase, Plant, PlantData>),
    PlantData,
    PrefetchHooks Function()> {
  $PlantTableManager(_$MyDatabase db, Plant table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $PlantFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $PlantOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $PlantAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> plantId = const Value.absent(),
            Value<String> plantType = const Value.absent(),
          }) =>
              PlantCompanion(
            plantId: plantId,
            plantType: plantType,
          ),
          createCompanionCallback: ({
            Value<int> plantId = const Value.absent(),
            required String plantType,
          }) =>
              PlantCompanion.insert(
            plantId: plantId,
            plantType: plantType,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $PlantProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Plant,
    PlantData,
    $PlantFilterComposer,
    $PlantOrderingComposer,
    $PlantAnnotationComposer,
    $PlantCreateCompanionBuilder,
    $PlantUpdateCompanionBuilder,
    (PlantData, BaseReferences<_$MyDatabase, Plant, PlantData>),
    PlantData,
    PrefetchHooks Function()>;
typedef $UserEntriesCreateCompanionBuilder = UserEntriesCompanion Function({
  required int userId,
  required int entryId,
  Value<int> rowid,
});
typedef $UserEntriesUpdateCompanionBuilder = UserEntriesCompanion Function({
  Value<int> userId,
  Value<int> entryId,
  Value<int> rowid,
});

class $UserEntriesFilterComposer extends Composer<_$MyDatabase, UserEntries> {
  $UserEntriesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnFilters(column));
}

class $UserEntriesOrderingComposer extends Composer<_$MyDatabase, UserEntries> {
  $UserEntriesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get entryId => $composableBuilder(
      column: $table.entryId, builder: (column) => ColumnOrderings(column));
}

class $UserEntriesAnnotationComposer
    extends Composer<_$MyDatabase, UserEntries> {
  $UserEntriesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<int> get entryId =>
      $composableBuilder(column: $table.entryId, builder: (column) => column);
}

class $UserEntriesTableManager extends RootTableManager<
    _$MyDatabase,
    UserEntries,
    UserEntry,
    $UserEntriesFilterComposer,
    $UserEntriesOrderingComposer,
    $UserEntriesAnnotationComposer,
    $UserEntriesCreateCompanionBuilder,
    $UserEntriesUpdateCompanionBuilder,
    (UserEntry, BaseReferences<_$MyDatabase, UserEntries, UserEntry>),
    UserEntry,
    PrefetchHooks Function()> {
  $UserEntriesTableManager(_$MyDatabase db, UserEntries table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $UserEntriesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $UserEntriesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $UserEntriesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<int> entryId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserEntriesCompanion(
            userId: userId,
            entryId: entryId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int userId,
            required int entryId,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserEntriesCompanion.insert(
            userId: userId,
            entryId: entryId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $UserEntriesProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    UserEntries,
    UserEntry,
    $UserEntriesFilterComposer,
    $UserEntriesOrderingComposer,
    $UserEntriesAnnotationComposer,
    $UserEntriesCreateCompanionBuilder,
    $UserEntriesUpdateCompanionBuilder,
    (UserEntry, BaseReferences<_$MyDatabase, UserEntries, UserEntry>),
    UserEntry,
    PrefetchHooks Function()>;
typedef $GardenCreateCompanionBuilder = GardenCompanion Function({
  Value<int> gardenSlot,
  required int plantId,
  required String name,
  required bool archived,
  required int maturity,
  required DateTime lastWatered,
});
typedef $GardenUpdateCompanionBuilder = GardenCompanion Function({
  Value<int> gardenSlot,
  Value<int> plantId,
  Value<String> name,
  Value<bool> archived,
  Value<int> maturity,
  Value<DateTime> lastWatered,
});

class $GardenFilterComposer extends Composer<_$MyDatabase, Garden> {
  $GardenFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get gardenSlot => $composableBuilder(
      column: $table.gardenSlot, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get archived => $composableBuilder(
      column: $table.archived, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maturity => $composableBuilder(
      column: $table.maturity, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get lastWatered => $composableBuilder(
      column: $table.lastWatered, builder: (column) => ColumnFilters(column));
}

class $GardenOrderingComposer extends Composer<_$MyDatabase, Garden> {
  $GardenOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get gardenSlot => $composableBuilder(
      column: $table.gardenSlot, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get plantId => $composableBuilder(
      column: $table.plantId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get archived => $composableBuilder(
      column: $table.archived, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maturity => $composableBuilder(
      column: $table.maturity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get lastWatered => $composableBuilder(
      column: $table.lastWatered, builder: (column) => ColumnOrderings(column));
}

class $GardenAnnotationComposer extends Composer<_$MyDatabase, Garden> {
  $GardenAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get gardenSlot => $composableBuilder(
      column: $table.gardenSlot, builder: (column) => column);

  GeneratedColumn<int> get plantId =>
      $composableBuilder(column: $table.plantId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<bool> get archived =>
      $composableBuilder(column: $table.archived, builder: (column) => column);

  GeneratedColumn<int> get maturity =>
      $composableBuilder(column: $table.maturity, builder: (column) => column);

  GeneratedColumn<DateTime> get lastWatered => $composableBuilder(
      column: $table.lastWatered, builder: (column) => column);
}

class $GardenTableManager extends RootTableManager<
    _$MyDatabase,
    Garden,
    GardenData,
    $GardenFilterComposer,
    $GardenOrderingComposer,
    $GardenAnnotationComposer,
    $GardenCreateCompanionBuilder,
    $GardenUpdateCompanionBuilder,
    (GardenData, BaseReferences<_$MyDatabase, Garden, GardenData>),
    GardenData,
    PrefetchHooks Function()> {
  $GardenTableManager(_$MyDatabase db, Garden table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $GardenFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $GardenOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $GardenAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> gardenSlot = const Value.absent(),
            Value<int> plantId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<bool> archived = const Value.absent(),
            Value<int> maturity = const Value.absent(),
            Value<DateTime> lastWatered = const Value.absent(),
          }) =>
              GardenCompanion(
            gardenSlot: gardenSlot,
            plantId: plantId,
            name: name,
            archived: archived,
            maturity: maturity,
            lastWatered: lastWatered,
          ),
          createCompanionCallback: ({
            Value<int> gardenSlot = const Value.absent(),
            required int plantId,
            required String name,
            required bool archived,
            required int maturity,
            required DateTime lastWatered,
          }) =>
              GardenCompanion.insert(
            gardenSlot: gardenSlot,
            plantId: plantId,
            name: name,
            archived: archived,
            maturity: maturity,
            lastWatered: lastWatered,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $GardenProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Garden,
    GardenData,
    $GardenFilterComposer,
    $GardenOrderingComposer,
    $GardenAnnotationComposer,
    $GardenCreateCompanionBuilder,
    $GardenUpdateCompanionBuilder,
    (GardenData, BaseReferences<_$MyDatabase, Garden, GardenData>),
    GardenData,
    PrefetchHooks Function()>;

class $MyDatabaseManager {
  final _$MyDatabase _db;
  $MyDatabaseManager(this._db);
  $UsersTableManager get users => $UsersTableManager(_db, _db.users);
  $MoodLogTableManager get moodLog => $MoodLogTableManager(_db, _db.moodLog);
  $GoalsTableManager get goals => $GoalsTableManager(_db, _db.goals);
  $EntriesTableManager get entries => $EntriesTableManager(_db, _db.entries);
  $PlantTableManager get plant => $PlantTableManager(_db, _db.plant);
  $UserEntriesTableManager get userEntries =>
      $UserEntriesTableManager(_db, _db.userEntries);
  $GardenTableManager get garden => $GardenTableManager(_db, _db.garden);
}
