part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  final List<Task> removedTasks;

  const TasksState({
    this.removedTasks = const <Task>[],
    this.allTasks = const <Task>[],
  });

  @override
  List<Object> get props => [allTasks, removedTasks];

  Map<String, dynamic> toMap() {
    return {
      'allTasks': allTasks.map((x) => x.toMap()).toList(),
      'removeTasks': removedTasks.map((x) => x.toMap()).toList(),
    };
  }

  factory TasksState.fromMap(Map<String, dynamic> map) {
    return TasksState(
        removedTasks:
            List<Task>.from(map['removeTasks']?.map((x) => Task.fromMap(x))),
        allTasks:
            List<Task>.from(map['allTasks']?.map((x) => Task.fromMap(x))));
  }
}
