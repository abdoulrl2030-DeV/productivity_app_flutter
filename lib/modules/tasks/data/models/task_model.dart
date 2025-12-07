import '../../domain/entities/task_entity.dart';

class TaskModel extends TaskEntity {
  TaskModel({required super.id, required super.title, required super.done});

  Map<String, dynamic> toMap() => {'id': id, 'title': title, 'done': done};

  factory TaskModel.fromMap(Map<String, dynamic> m) => TaskModel(id: m['id'], title: m['title'], done: m['done'] ?? false);
}
