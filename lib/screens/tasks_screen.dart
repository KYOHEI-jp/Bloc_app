import 'package:flutter/material.dart';

import '../models/task.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);

  List<Task> tasksList = [
    Task(title: "タスク1", isDeleted: null, isDone: null),
    Task(title: "タスク2", isDeleted: null, isDone: null),
    Task(title: "タスク3", isDeleted: null, isDone: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Chip(
              label: Text(
                'Tasks:',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: tasksList.length,
                itemBuilder: (context, index) {
                  var task = tasksList[index];
                  return ListTile(
                    title: Text(task.title),
                    trailing: Checkbox(
                      value: task.isDone,
                      onChanged: (value) {},
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
