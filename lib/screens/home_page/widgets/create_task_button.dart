import 'package:flutter/material.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple,
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
