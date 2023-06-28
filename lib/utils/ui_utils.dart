import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' as sheet;
import 'package:untitled2/constants/filter_type.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';

Future<ToDoModel?> createTodoBottomSheet({
  required BuildContext context,
  required Widget child,
}) async {
  ToDoModel? newTask = await sheet.showCupertinoModalBottomSheet<ToDoModel?>(
    builder: (_) {
      return Material(
        child: child,
      );
    },
    context: context,
  );
  return newTask;
}

Future<FilterType?> filterBottomSheet({
  required BuildContext context,
  required Widget child,
}) async {
  FilterType? sortedType =
      await sheet.showCupertinoModalBottomSheet<FilterType?>(
    builder: (_) {
      return Material(
        child: child,
      );
    },
    context: context,
  );
  return sortedType;
}

Future<void> todoInfoBottomSheet({
  required BuildContext context,
  required Widget child,
}) async {
  await sheet.showCupertinoModalBottomSheet(
    builder: (_) {
      return Material(
        child: child,
      );
    },
    context: context,
  );
}
