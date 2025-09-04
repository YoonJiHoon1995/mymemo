import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_memo/bloc/folder/folder_event.dart';
import 'package:my_memo/bloc/folder/folder_state.dart';
import 'package:my_memo/data/repository/folder_repository.dart';

class FolderBloc extends Bloc<FolderEvent, FolderState> {
  final FolderRepository folderRepository;

  FolderBloc(this.folderRepository) : super(FoldersInitial()) {
    on<LoadFolders>((event, emit) async {
      emit(FoldersLoading());
      try {
        final folders = await folderRepository.getAllFolders();
        emit(FoldersLoaded(folders));
      } catch (e) {
        emit(FoldersError(e.toString()));
      }
    });

    on<AddFolder>((event, emit) async {
      if (state is FoldersLoaded) {
        await folderRepository.addFolder(event.folder);
        add(LoadFolders());
      }
    });

    on<UpdateFolder>((event, emit) async {
      if (state is FoldersLoaded) {
        await folderRepository.updateFolder(event.folder);
        add(LoadFolders());
      }
    });

    on<DeleteFolder>((event, emit) async {
      if (state is FoldersLoaded) {
        await folderRepository.deleteFolder(event.folderId);
        add(LoadFolders());
      }
    });
  }
}
