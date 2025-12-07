import 'package:flutter/material.dart';
import '../../../tasks/domain/usecases/get_tasks.dart';
import '../../../tasks/domain/usecases/add_task.dart';
import '../../../tasks/domain/usecases/delete_task.dart';
import '../../../tasks/domain/usecases/toggle_task.dart';
import '../../domain/entities/task_entity.dart';

class TaskController extends ChangeNotifier {
  final GetTasks _get = GetTasks();
  final AddTask _add = AddTask();
  final DeleteTask _delete = DeleteTask();
  final ToggleTask _toggle = ToggleTask();

  List<TaskEntity> tasks = [];
  bool loading = false;

  Future<void> load() async {
    loading = true;
    notifyListeners();
    tasks = List<TaskEntity>.from(await _get.call());
    loading = false;
    notifyListeners();
  }

  Future<void> addTask(TaskEntity t) async {
    await _add.call(t);
    await load();
  }

  Future<void> deleteTask(String id) async {
    await _delete.call(id);
    await load();
  }

  Future<void> toggleTask(String id) async {
    await _toggle.call(id);
    await load();
  }
}
