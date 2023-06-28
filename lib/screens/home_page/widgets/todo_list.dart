import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';

import 'todo_item.dart';

class ToDoList extends StatelessWidget {
  final List<ToDoModel> todos;
  final Function(ToDoModel) updateTask;
  final Function(ToDoModel) deleteTask;
  final Function(ToDoModel) onCheck;

  const ToDoList({
    Key? key,
    required this.todos,
    required this.updateTask,
    required this.deleteTask,
    required this.onCheck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Column(
        children: [
          index == 0 ? const SizedBox(height: 20) : const SizedBox(),
          Observer(
            builder: (context) {
              return ToDoItem(
                todo: todos[index],
                updateTask: updateTask,
                deleteTask: deleteTask,
                onCheck: onCheck,
              );
            },
          ),
          const SizedBox(height: 12),
        ],
      ),
      itemCount: todos.length,
    );
  }
}
