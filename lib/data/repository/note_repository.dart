import 'package:my_memo/data/datasources/local/note_dao.dart';
import 'package:my_memo/data/models/note.dart';

class NoteRepository {
  final NoteDao _noteDao;

  NoteRepository(this._noteDao);

  Future<List<Note>> getAllNotes() {
    return _noteDao.getAllNotes();
  }

  Future<void> addNote(Note note) {
    return _noteDao.addNote(note);
  }

  Future<void> updateNote(Note note) {
    return _noteDao.updateNote(note);
  }

  Future<void> deleteNote(int id) {
    return _noteDao.deleteNoteById(id);
  }
}