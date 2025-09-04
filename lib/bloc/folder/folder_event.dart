import 'package:my_memo/data/models/folder.dart';

abstract class FolderEvent {}

class LoadFolders extends FolderEvent {}

class AddFolder extends FolderEvent {
  final FolderModel folder;
  AddFolder(this.folder);
}

class UpdateFolder extends FolderEvent {
  final FolderModel folder;
  UpdateFolder(this.folder);
}

class DeleteFolder extends FolderEvent {
  final int folderId;
  DeleteFolder(this.folderId);
}
