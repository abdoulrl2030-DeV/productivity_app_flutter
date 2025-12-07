import 'dart:collection';

import '../../domain/entities/task_entity.dart';

class TasksLocalDataSource {
  final List<TaskEntity> _tasks = [];

  Future<List<TaskEntity>> getAll() async => UnmodifiableListView(_tasks);

  Future<void> add(TaskEntity t) async {
    _tasks.add(t);
  }

  Future<void> delete(String id) async {
    _tasks.removeWhere((e) => e.id == id);
  }

  Future<void> toggle(String id) async {
    final idx = _tasks.indexWhere((e) => e.id == id);
    if (idx >= 0) {
      final t = _tasks[idx];
      _tasks[idx] = TaskEntity(id: t.id, title: t.title, done: !t.done);
    }
  }
}
