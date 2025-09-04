import 'package:drift/drift.dart';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:my_memo/data/models/note.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';

import '../../models/folder.dart';

import 'note_dao.dart';
import 'folder_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Note, FolderModel], daos: [NoteDao, FolderDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_database.sqlite'));
    return NativeDatabase(file);
  });
}
