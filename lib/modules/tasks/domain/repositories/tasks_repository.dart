import '../entities/task_entity.dart';

abstract class TasksRepository {
  Future<List<TaskEntity>> getAll();
  Future<void> add(TaskEntity task);
  Future<void> delete(String id);
  Future<void> toggle(String id);
}
