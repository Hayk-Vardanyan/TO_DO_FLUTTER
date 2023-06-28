import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';
import 'package:untitled2/state/validation_state/validation_state.dart';
import 'package:uuid/uuid.dart';

import 'widgets/input_text_field.dart';

class CreateToDoScreen extends StatefulWidget {
  final bool isUpdatePage;
  final ToDoModel? task;

  const CreateToDoScreen({
    Key? key,
    this.isUpdatePage = false,
    this.task,
  }) : super(key: key);

  @override
  State<CreateToDoScreen> createState() => _CreateToDoScreenState();
}

class _CreateToDoScreenState extends State<CreateToDoScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode descriptionFocusNode = FocusNode();

  final ValidationState validationState = ValidationState();

  @override
  void initState() {
    super.initState();
    validationState.setupValidations();
    initVariables();
  }

  void initVariables() {
    if (widget.isUpdatePage && widget.task != null) {
      nameController.text = widget.task!.title;
      descriptionController.text = widget.task!.description;
      validationState.title = widget.task!.title;
      validationState.description = widget.task!.description;
    }
  }

  void onTitleChanged(String value) {
    validationState.title = value;
  }

  void onDescriptionChanged(String value) {
    validationState.description = value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nameFocusNode.unfocus();
        descriptionFocusNode.unfocus();
      },
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.isUpdatePage ? "Update your task" : "Create a new task!",
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 28,
                height: 1.38,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      height: 1.38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Observer(
                    builder: (context) {
                      return InputTextField(
                        controller: nameController,
                        focusNode: nameFocusNode,
                        label: 'title',
                        onChanged: onTitleChanged,
                        error: validationState.error.titleError,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 16,
                      height: 1.38,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Observer(
                    builder: (context) {
                      return InputTextField(
                        controller: descriptionController,
                        focusNode: descriptionFocusNode,
                        label: 'description',
                        onChanged: onDescriptionChanged,
                        error: validationState.error.descriptionError,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
              child: Observer(
                builder: (context) {
                  return ElevatedButton(
                    onPressed:
                        validationState.error.hasErrors ? null : onTaskCreate,
                    child: Text(
                      widget.isUpdatePage ? 'Update' : 'Create',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 85),
          ],
        ),
      ),
    );
  }

  void onTaskCreate() {
    validationState.validateTitle(false);
    validationState.validateDescription(false);
    if (!validationState.error.hasErrors) {
      Navigator.pop<ToDoModel>(
        context,
        ToDoModel(
          id: widget.task == null ? const Uuid().v4() : widget.task!.id,
          completed: widget.task == null ? false : widget.task!.completed,
          title: nameController.text,
          description: descriptionController.text,
        ),
      );
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    nameFocusNode.dispose();
    descriptionFocusNode.dispose();
    super.dispose();
  }
}
