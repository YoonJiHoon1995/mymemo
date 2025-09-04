import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_memo/data/repository/note_repository.dart';
import 'note_event.dart';
import 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NoteRepository noteRepository;

  NoteBloc(this.noteRepository) : super(NotesInitial()) {
    on<LoadNotes>((event, emit) async {
      emit(NotesLoading());
      try {
        final notes = await noteRepository.getAllNotes();
        emit(NotesLoaded(notes));
      } catch (e) {
        emit(NotesError(e.toString()));
      }
    });

    on<AddNote>((event, emit) async {
      if (state is NotesLoaded) {
        await noteRepository.addNote(event.note);
        add(LoadNotes());
      }
    });

    on<UpdateNote>((event, emit) async {
      if (state is NotesLoaded) {
        await noteRepository.updateNote(event.note);
        add(LoadNotes());
      }
    });

    on<DeleteNote>((event, emit) async {
      if (state is NotesLoaded) {
        await noteRepository.deleteNote(event.noteId);
        add(LoadNotes());
      }
    });
  }
}
