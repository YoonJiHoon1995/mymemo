import 'package:drift/drift.dart';
import 'package:my_memo/data/datasources/local/app_database.dart';
import 'package:my_memo/data/models/folder.dart';

part 'folder_dao.g.dart';

@DriftAccessor(tables: [FolderModel])
class FolderDao extends DatabaseAccessor<AppDatabase> with _$FolderDaoMixin {
  final AppDatabase db;

  FolderDao(this.db) : super(db);

  Future<List<FolderModel>> getAllFolders() => select(folderModels).get();

  Future<int> addFolder(FolderModel folder) => into(folderModels).insert(folder);

  Future<bool> updateFolder(FolderModel folder) => update(folderModels).replace(folder);

  Future<int> deleteFolderById(int id) => (delete(folderModels)..where((tbl) => tbl.id.equals(id))).go();
}
