import '../../data/repository/tasks_repository_impl.dart';

class ToggleTask {
  final TasksRepositoryImpl _repo = TasksRepositoryImpl();
  Future call(String id) async => _repo.toggle(id);
}
