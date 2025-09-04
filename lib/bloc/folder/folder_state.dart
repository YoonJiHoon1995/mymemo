import 'package:my_memo/data/models/folder.dart';

abstract class FolderState {}

class FoldersInitial extends FolderState {}

class FoldersLoading extends FolderState {}

class FoldersLoaded extends FolderState {
  final List<FolderModel> folders;
  FoldersLoaded(this.folders);
}

class FoldersError extends FolderState {
  final String message;
  FoldersError(this.message);
}
