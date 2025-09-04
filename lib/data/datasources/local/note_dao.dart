import 'package:drift/drift.dart';

import 'app_database.dart';

part 'note_dao.g.dart';

@DriftAccessor(tables: [Note])
class NoteDao extends DatabaseAccessor<AppDatabase> with _$NoteDaoMixin {
  final AppDatabase db;

  NoteDao(this.db) : super(db);

  Future<List<Note>> getAllNotes() => select(notes).get();

  Future<int> addNote(Note note) => into(note).insert(note);

  Future<bool> updateNote(Note note) => update(note).replace(note);

  Future<int> deleteNoteById(int id) => (delete(note)..where((tbl) => tbl.id.equals(id))).go();
}
