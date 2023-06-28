import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  final Function(String onChanged) onChanged;
  final String? error;

  const InputTextField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.error,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onChanged: onChanged,
          focusNode: focusNode,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              // horizontal: 16,
              vertical: 5,
            ),
            hintText: label,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: error != null ? Colors.red : Colors.purple,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: error != null ? Colors.red : Colors.purple,
              ),
            ),
            // filled: false,
          ),
          controller: controller,
          cursorColor: Colors.purple,
          textCapitalization: TextCapitalization.sentences,
        ),
        const SizedBox(height: 2),
        if (error != null)
          Text(
            error!,
            style: const TextStyle(
              color: Colors.red,
            ),
          )
      ],
    );
  }
}
