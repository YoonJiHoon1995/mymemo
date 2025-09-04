
import 'package:my_memo/data/datasources/local/folder_dao.dart';
import 'package:my_memo/data/models/folder.dart';

class FolderRepository {
  final FolderDao _folderDao;

  FolderRepository(this._folderDao);

  Future<List<FolderModel>> getAllFolders() {
    return _folderDao.getAllFolders();
  }

  Future<void> addFolder(FolderModel folder) {
    return _folderDao.addFolder(folder);
  }

  Future<void> updateFolder(FolderModel folder) {
    return _folderDao.updateFolder(folder);
  }

  Future<void> deleteFolder(int id) {
    return _folderDao.deleteFolderById(id);
  }
}