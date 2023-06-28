import 'package:flutter/material.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';

class ToDoInfoScreen extends StatelessWidget {
  final ToDoModel toDo;

  const ToDoInfoScreen({
    Key? key,
    required this.toDo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
            Text(
              toDo.title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
            Text(
              toDo.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
