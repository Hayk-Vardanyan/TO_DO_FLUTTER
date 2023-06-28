import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_model.freezed.dart';

part 'to_do_model.g.dart';

@freezed
class ToDoModel with _$ToDoModel {
  ToDoModel._();

  factory ToDoModel({
    required String id,
    required String title,
    required String description,
    @Default(false) bool completed,
  }) = _ToDoModel;

  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);
}
