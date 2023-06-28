import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled2/constants/filter_type.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';
import 'package:untitled2/screens/home_page/widgets/create_task_button.dart';
import 'package:untitled2/screens/home_page/widgets/todo_list.dart';
import 'package:untitled2/state/home_page_state/home_page_state.dart';
import 'package:untitled2/utils/assets.dart';

import '../../bottom_sheet_screens/create_todo_bottom_sheet/create_todo_bottom_sheet.dart';
import '../../bottom_sheet_screens/filter_bottom_sheet/filter_bottom_sheet.dart';
import '../../utils/ui_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageState _homePageState = HomePageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('ToDo List'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () async {
                FilterType? sortedType = await filterBottomSheet(
                  context: context,
                  child: FilterBottomSheet(
                    filterType: _homePageState.filterType,
                  ),
                );
                if (sortedType != null) {
                  _homePageState.filterType = sortedType;
                }
              },
              child: SvgPicture.asset(
                Assets.sortIcon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Observer(
            builder: (context) {
              return _homePageState.allTasks.isNotEmpty
                  ? ToDoList(
                      updateTask: _homePageState.updateTask,
                      deleteTask: _homePageState.deleteTask,
                      onCheck: _homePageState.onCheck,
                      todos: _homePageState.filterType == FilterType.ALL
                          ? _homePageState.allTasks
                          : _homePageState.filterType == FilterType.COMPLETED
                              ? _homePageState.completedTasks
                              : _homePageState.activeTasks,
                    )
                  : const SizedBox();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: InkWell(
                onTap: () async {
                  ToDoModel? newTask = await createTodoBottomSheet(
                    context: context,
                    child: const CreateToDoScreen(),
                  );
                  if (newTask != null) {
                    _homePageState.addNewTask(newTask);
                  }
                },
                child: const CreateTaskButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
