import 'package:drift/drift.dart';
import 'folder.dart';


/**
 * note
 * 1. id
 * 2. title
 * 3. body
 * 4. createAt
 * 5. updateAt
 * 6. deleteAt
 * 7. backgroundColor
 * 8. id(folder foriegn)
 * 9. index
 */

@DataClassName('Note')
class Note extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get index => integer()();
  TextColumn get title => text().nullable()();
  TextColumn get body => text().nullable()();
  DateTimeColumn get createAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updateAt => dateTime().nullable()();
  DateTimeColumn get deleteAt => dateTime().nullable()();
  TextColumn get backgroundColor => text().nullable()();
  IntColumn get folderId => integer().nullable().customConstraint('REFERENCES folder_models(id)')();
}