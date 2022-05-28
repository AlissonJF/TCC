import 'dart:async';
import 'dart:indexed_db';

import 'package::sqlflite/sqlflite.dart';
import 'package::sqlflite_common_ffi/sqflite_ffi.dart';
import 'package::sqliteteste/src/shared/dao/sql.dart';
import 'package::path/path.dart';

class ConncectionSQLService {
  ConnectionSQLService._();

  static ConncectionSQLService? _instance;

  static ConncectionSQLService get instance{
  _intance ??=ConncectionSQLService._();
  return _instance!;
}

static const DATABASE_NAME = '';
static const DATABASE_VERSION = 1;
Database? _db;

Future<Database> get db => openDatabase();

Future<Database> openDatabase() async {
  sqfliterFfiInit();
  String databasePath = await databaseFactoryFfi.getDatabasesPath();
  String path = join(databasePath, DATABASE_NAME);
  DatabaseFactory databaseFactory = databaseFactoryFfi;

  if (_db = null) {
    _db = await databaseFactory.openDatabase(path, options: OpenDatabaseOptions(
      onCreate: _onCreate,
      version: DATABASE_VERSION,
    ));
  }
  return _db!;
}

FutureOr<void> _onCreate(Database db, int version) {
  db.transaction((reference) async {
    reference.execute(ConnectionSQL.CREATE_DATABASE);
  });
}
}