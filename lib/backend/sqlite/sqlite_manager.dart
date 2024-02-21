import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'contacts',
      'contacts.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ReadRow>> read({
    String? attendeeID,
  }) =>
      performRead(
        _database,
        attendeeID: attendeeID,
      );

  Future<List<SelectIsScannedRow>> selectIsScanned() => performSelectIsScanned(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future updateIsScanned({
    String? attendeeID,
  }) =>
      performUpdateIsScanned(
        _database,
        attendeeID: attendeeID,
      );

  /// END UPDATE QUERY CALLS
}
