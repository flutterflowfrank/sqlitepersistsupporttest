import 'package:sqflite/sqflite.dart';

/// BEGIN UPDATE ISSCANNED
Future performUpdateIsScanned(
  Database database, {
  String? attendeeID,
}) {
  final query = '''
UPDATE Contacts
SET 
	isScanned='true'
WHERE attendeeID = '$attendeeID';
''';
  return database.rawQuery(query);
}

/// END UPDATE ISSCANNED
