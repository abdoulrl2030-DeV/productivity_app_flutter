class TaskEntity {
  final String id;
  final String title;
  final bool done;

  TaskEntity({required this.id, required this.title, this.done = false});
}
