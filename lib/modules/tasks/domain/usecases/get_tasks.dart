import '../../data/repository/tasks_repository_impl.dart';

class GetTasks {
  final TasksRepositoryImpl _repo = TasksRepositoryImpl();

  Future call() async => _repo.getAll();
}
