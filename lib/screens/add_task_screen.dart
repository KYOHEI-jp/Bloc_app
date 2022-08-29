import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/bloc/tasks_bloc.dart';
import '../models/task.dart';

// TODO 上から下ににゅるっと出したい
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    Key? key,
    required this.titleController,
  }) : super(key: key);

  final TextEditingController titleController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "タスクを追加する",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                  label: Text("タイトル"), border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("キャンセル"),
                ),
                ElevatedButton(
                  onPressed: () {
                    var task = Task(
                        title: titleController.text,
                        isDone: null,
                        isDeleted: null);
                    context.read<TasksBloc>().add(AddTask(task: task));
                    Navigator.pop(context);
                  },
                  child: const Text("追加する"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}