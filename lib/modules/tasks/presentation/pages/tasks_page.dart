import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../presentation/controller/task_controller.dart';
import '../../../tasks/domain/entities/task_entity.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final TextEditingController _newTask = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TaskController>(context, listen: false).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ctrl = Provider.of<TaskController>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(controller: _newTask, decoration: const InputDecoration(hintText: 'New task'))),
                IconButton(
                    onPressed: () async {
                      final t = TaskEntity(id: DateTime.now().millisecondsSinceEpoch.toString(), title: _newTask.text);
                      await ctrl.addTask(t);
                      _newTask.clear();
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
            const SizedBox(height: 12),
            if (ctrl.loading) const CircularProgressIndicator(),
            if (!ctrl.loading && ctrl.tasks.isEmpty) const Center(child: Text('Nenhuma tarefa')),
            if (!ctrl.loading)
              Expanded(
                child: ListView.builder(
                  itemCount: ctrl.tasks.length,
                  itemBuilder: (context, i) {
                    final t = ctrl.tasks[i];
                    return ListTile(
                      title: Text(t.title),
                      leading: Checkbox(value: t.done, onChanged: (_) => ctrl.toggleTask(t.id)),
                      trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () => ctrl.deleteTask(t.id)),
                    );
                  },
                ),
              )
          ],
        ),
      ),
    );
  }
}
