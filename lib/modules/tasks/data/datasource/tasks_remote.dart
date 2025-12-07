import '../../domain/entities/task_entity.dart';

class TasksRemoteDataSource {
  Future<List<TaskEntity>> fetch() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return [
      TaskEntity(id: 't1', title: 'Demo task', done: false),
    ];
  }
}
