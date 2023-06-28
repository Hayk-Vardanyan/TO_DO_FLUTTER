// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageState on _HomePageState, Store {
  late final _$tasksAtom = Atom(name: '_HomePageState.tasks', context: context);

  @override
  ObservableList<ToDoModel> get allTasks {
    _$tasksAtom.reportRead();
    return super.allTasks;
  }

  @override
  set allTasks(ObservableList<ToDoModel> value) {
    _$tasksAtom.reportWrite(value, super.allTasks, () {
      super.allTasks = value;
    });
  }

  late final _$completedTasksAtom =
      Atom(name: '_HomePageState.completedTasks', context: context);

  @override
  ObservableList<ToDoModel> get completedTasks {
    _$completedTasksAtom.reportRead();
    return super.completedTasks;
  }

  @override
  set completedTasks(ObservableList<ToDoModel> value) {
    _$completedTasksAtom.reportWrite(value, super.completedTasks, () {
      super.completedTasks = value;
    });
  }

  late final _$activeTasksAtom =
      Atom(name: '_HomePageState.activeTasks', context: context);

  @override
  ObservableList<ToDoModel> get activeTasks {
    _$activeTasksAtom.reportRead();
    return super.activeTasks;
  }

  @override
  set activeTasks(ObservableList<ToDoModel> value) {
    _$activeTasksAtom.reportWrite(value, super.activeTasks, () {
      super.activeTasks = value;
    });
  }

  late final _$filterTypeAtom =
      Atom(name: '_HomePageState.filterType', context: context);

  @override
  FilterType get filterType {
    _$filterTypeAtom.reportRead();
    return super.filterType;
  }

  @override
  set filterType(FilterType value) {
    _$filterTypeAtom.reportWrite(value, super.filterType, () {
      super.filterType = value;
    });
  }

  late final _$_HomePageStateActionController =
      ActionController(name: '_HomePageState', context: context);

  @override
  void addNewTask(ToDoModel newTask) {
    final _$actionInfo = _$_HomePageStateActionController.startAction(
        name: '_HomePageState.addNewTask');
    try {
      return super.addNewTask(newTask);
    } finally {
      _$_HomePageStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTask(ToDoModel updatedTask) {
    final _$actionInfo = _$_HomePageStateActionController.startAction(
        name: '_HomePageState.updateTask');
    try {
      return super.updateTask(updatedTask);
    } finally {
      _$_HomePageStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTask(ToDoModel deletedTask) {
    final _$actionInfo = _$_HomePageStateActionController.startAction(
        name: '_HomePageState.deleteTask');
    try {
      return super.deleteTask(deletedTask);
    } finally {
      _$_HomePageStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onCheck(ToDoModel completedTask) {
    final _$actionInfo = _$_HomePageStateActionController.startAction(
        name: '_HomePageState.onCheck');
    try {
      return super.onCheck(completedTask);
    } finally {
      _$_HomePageStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${allTasks},
completedTasks: ${completedTasks},
activeTasks: ${activeTasks},
filterType: ${filterType}
    ''';
  }
}
