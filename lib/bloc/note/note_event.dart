import 'package:my_memo/data/models/note.dart';

abstract class NoteEvent {}

class LoadNotes extends NoteEvent {}

class AddNote extends NoteEvent {
  final Note note;
  AddNote(this.note);
}

class UpdateNote extends NoteEvent {
  final Note note;
  UpdateNote(this.note);
}

class DeleteNote extends NoteEvent {
  final int noteId;
  DeleteNote(this.noteId);
}
