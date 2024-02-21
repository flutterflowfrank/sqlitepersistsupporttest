import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN READ
Future<List<ReadRow>> performRead(
  Database database, {
  String? attendeeID,
}) {
  final query = '''
SELECT * FROM Contacts WHERE attendeeID = '$attendeeID';
''';
  return _readQuery(database, query, (d) => ReadRow(d));
}

class ReadRow extends SqliteRow {
  ReadRow(super.data);

  String? get lastName => data['LastName'] as String?;
  String? get firstName => data['FirstName'] as String?;
  String? get position => data['Position'] as String?;
  String? get expenditureOrg => data['ExpenditureOrg'] as String?;
  String? get generalManager => data['GeneralManager'] as String?;
  String? get employeeEmail => data['EmployeeEmail'] as String?;
  String? get city => data['City'] as String?;
  String? get state => data['State'] as String?;
  String? get country => data['Country'] as String?;
  String? get phoneNumber => data['PhoneNumber'] as String?;
  String? get attendeeID => data['attendeeID'] as String?;
}

/// END READ

/// BEGIN SELECT ISSCANNED
Future<List<SelectIsScannedRow>> performSelectIsScanned(
  Database database,
) {
  const query = '''
SELECT * FROM Contacts WHERE isScanned = 'true';
''';
  return _readQuery(database, query, (d) => SelectIsScannedRow(d));
}

class SelectIsScannedRow extends SqliteRow {
  SelectIsScannedRow(super.data);

  String? get attendeeID => data['attendeeID'] as String?;
  String? get lastName => data['LastName'] as String?;
  String? get position => data['Position'] as String?;
  String? get expenditureOrg => data['ExpenditureOrg'] as String?;
  String? get generalManager => data['GeneralManager'] as String?;
  String? get employeeEmail => data['EmployeeEmail'] as String?;
  String? get city => data['City'] as String?;
  String? get state => data['State'] as String?;
  String? get country => data['Country'] as String?;
  String? get phoneNumber => data['PhoneNumber'] as String?;
  String? get isScanned => data['isScanned'] as String?;
}

/// END SELECT ISSCANNED
