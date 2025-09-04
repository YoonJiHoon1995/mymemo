import 'package:my_memo/data/models/note.dart';

abstract class NoteState {}

class NotesInitial extends NoteState {}

class NotesLoading extends NoteState {}

class NotesLoaded extends NoteState {
  final List<Note> notes;
  NotesLoaded(this.notes);
}

class NotesError extends NoteState {
  final String message;
  NotesError(this.message);
}
