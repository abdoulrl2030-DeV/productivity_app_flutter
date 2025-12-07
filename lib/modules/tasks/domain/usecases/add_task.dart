import '../../data/repository/tasks_repository_impl.dart';
import '../entities/task_entity.dart';

class AddTask {
  final TasksRepositoryImpl _repo = TasksRepositoryImpl();
  Future call(TaskEntity task) async => _repo.add(task);
}
