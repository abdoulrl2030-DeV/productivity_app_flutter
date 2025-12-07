import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool done;
  final VoidCallback? onToggle;
  final VoidCallback? onDelete;

  const TaskTile({super.key, required this.title, this.done = false, this.onToggle, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(value: done, onChanged: (_) => onToggle?.call()),
      trailing: IconButton(icon: const Icon(Icons.delete), onPressed: onDelete),
    );
  }
}
