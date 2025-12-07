import '../../data/repository/tasks_repository_impl.dart';

class DeleteTask {
  final TasksRepositoryImpl _repo = TasksRepositoryImpl();
  Future call(String id) async => _repo.delete(id);
}
