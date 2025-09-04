import 'package:drift/drift.dart';

/**
 * folder
 * 1. id
 * 2. index
 * 3. title
 */

@DataClassName('FolderModel')
class FolderModel extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get index => integer()();
  TextColumn get title => text()();
}
