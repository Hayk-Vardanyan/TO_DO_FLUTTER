import 'package:flutter/material.dart';
import 'package:untitled2/bottom_sheet_screens/create_todo_bottom_sheet/create_todo_bottom_sheet.dart';
import 'package:untitled2/bottom_sheet_screens/todo_info_bottom_sheet/to_do_info_bottom_sheet.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';
import 'package:untitled2/utils/ui_utils.dart';

class ToDoItem extends StatelessWidget {
  final ToDoModel todo;
  final Function(ToDoModel) updateTask;
  final Function(ToDoModel) deleteTask;
  final Function(ToDoModel) onCheck;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.updateTask,
    required this.deleteTask,
    required this.onCheck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () async {
                  await todoInfoBottomSheet(
                    context: context,
                    child: ToDoInfoScreen(toDo: todo),
                  );
                },
                icon: const Icon(
                  Icons.list,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          fillColor: MaterialStateProperty.all(
                            Colors.deepPurple,
                          ),
                          visualDensity: const VisualDensity(
                            horizontal: -4,
                            vertical: -4,
                          ),
                          value: todo.completed,
                          onChanged: (_) {
                            onCheck(todo);
                          },
                          hoverColor: Colors.deepPurple,
                        ),
                        Expanded(
                          child: Text(
                            todo.title,
                            style: const TextStyle(
                              color: Colors.indigo,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Text(
                        todo.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: const TextStyle(
                          color: Colors.indigo,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () async {
                      ToDoModel? updatedTask = await createTodoBottomSheet(
                        context: context,
                        child: CreateToDoScreen(
                          isUpdatePage: true,
                          task: todo,
                        ),
                      );
                      if (updatedTask != null) {
                        updateTask(updatedTask);
                      }
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.deepPurple,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      deleteTask(todo);
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.purple,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
