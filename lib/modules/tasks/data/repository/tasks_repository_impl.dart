import '../../domain/repositories/tasks_repository.dart';
import '../../domain/entities/task_entity.dart';
import '../datasource/tasks_local.dart';
import '../datasource/tasks_remote.dart';

class TasksRepositoryImpl implements TasksRepository {
  final TasksLocalDataSource local = TasksLocalDataSource();
  final TasksRemoteDataSource remote = TasksRemoteDataSource();

  @override
  Future<void> add(TaskEntity task) async => local.add(task);

  @override
  Future<void> delete(String id) async => local.delete(id);

  @override
  Future<List<TaskEntity>> getAll() async {
    final remoteList = await remote.fetch();
    // merge remote with local for this demo
    final localList = await local.getAll();
    return [...remoteList, ...localList];
  }

  @override
  Future<void> toggle(String id) async => local.toggle(id);
}
