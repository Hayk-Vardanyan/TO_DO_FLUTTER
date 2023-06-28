import 'package:mobx/mobx.dart';
import 'package:untitled2/constants/filter_type.dart';
import 'package:untitled2/models/to_do_model/to_do_model.dart';

part 'home_page_state.g.dart';

// ignore: library_private_types_in_public_api
class HomePageState = _HomePageState with _$HomePageState;

abstract class _HomePageState with Store {
  @observable
  ObservableList<ToDoModel> allTasks =
      ObservableList<ToDoModel>.of([]).asObservable();

  @observable
  ObservableList<ToDoModel> completedTasks =
      ObservableList<ToDoModel>.of([]).asObservable();

  @observable
  ObservableList<ToDoModel> activeTasks =
      ObservableList<ToDoModel>.of([]).asObservable();

  @observable
  FilterType filterType = FilterType.ALL;

  @action
  void addNewTask(ToDoModel newTask) {
    allTasks.add(newTask);
    activeTasks.add(newTask);
  }

  @action
  void updateTask(ToDoModel updatedTask) {
    for (var i = 0; i < allTasks.length; ++i) {
      if (allTasks[i].id == updatedTask.id) {
        allTasks[i] = updatedTask;
        if (allTasks[i].completed == true) {
          int index = completedTasks
              .indexWhere((element) => element.id == updatedTask.id);
          if (index != -1) {
            completedTasks[index] = allTasks[i];
          }
        } else {
          int index =
              activeTasks.indexWhere((element) => element.id == updatedTask.id);
          if (index != -1) {
            activeTasks[index] = allTasks[i];
          }
        }
        break;
      }
    }
  }

  @action
  void deleteTask(ToDoModel deletedTask) {
    for (var i = 0; i < allTasks.length; ++i) {
      if (allTasks[i].id == deletedTask.id) {
        allTasks.removeAt(i);
        if (deletedTask.completed == true) {
          int index = completedTasks
              .indexWhere((element) => element.id == deletedTask.id);
          if (index != -1) {
            completedTasks.removeAt(index);
          }
        } else {
          int index =
              activeTasks.indexWhere((element) => element.id == deletedTask.id);
          if (index != -1) {
            activeTasks.removeAt(index);
          }
        }
        break;
      }
    }
  }

  @action
  void onCheck(ToDoModel completedTask) {
    for (var i = 0; i < allTasks.length; ++i) {
      if (allTasks[i].id == completedTask.id) {
        allTasks[i] = allTasks[i].copyWith(completed: !allTasks[i].completed);
        if (allTasks[i].completed == true) {
          completedTasks.add(allTasks[i]);
          int index = activeTasks
              .indexWhere((element) => element.id == completedTask.id);
          if (index != -1) {
            activeTasks.removeAt(index);
          }
        } else {
          activeTasks.add(allTasks[i]);
          int index = completedTasks
              .indexWhere((element) => element.id == completedTask.id);
          if (index != -1) {
            completedTasks.removeAt(index);
          }
        }
        break;
      }
    }
  }
}
