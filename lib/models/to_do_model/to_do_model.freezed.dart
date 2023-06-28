// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) {
  return _ToDoModel.fromJson(json);
}

/// @nodoc
mixin _$ToDoModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoModelCopyWith<ToDoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoModelCopyWith<$Res> {
  factory $ToDoModelCopyWith(ToDoModel value, $Res Function(ToDoModel) then) =
      _$ToDoModelCopyWithImpl<$Res, ToDoModel>;
  @useResult
  $Res call({String id, String title, String description, bool completed});
}

/// @nodoc
class _$ToDoModelCopyWithImpl<$Res, $Val extends ToDoModel>
    implements $ToDoModelCopyWith<$Res> {
  _$ToDoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoModelCopyWith<$Res> implements $ToDoModelCopyWith<$Res> {
  factory _$$_ToDoModelCopyWith(
          _$_ToDoModel value, $Res Function(_$_ToDoModel) then) =
      __$$_ToDoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String description, bool completed});
}

/// @nodoc
class __$$_ToDoModelCopyWithImpl<$Res>
    extends _$ToDoModelCopyWithImpl<$Res, _$_ToDoModel>
    implements _$$_ToDoModelCopyWith<$Res> {
  __$$_ToDoModelCopyWithImpl(
      _$_ToDoModel _value, $Res Function(_$_ToDoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? completed = null,
  }) {
    return _then(_$_ToDoModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDoModel extends _ToDoModel {
  _$_ToDoModel(
      {required this.id,
      required this.title,
      required this.description,
      this.completed = false})
      : super._();

  factory _$_ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$$_ToDoModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool completed;

  @override
  String toString() {
    return 'ToDoModel(id: $id, title: $title, description: $description, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoModelCopyWith<_$_ToDoModel> get copyWith =>
      __$$_ToDoModelCopyWithImpl<_$_ToDoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoModelToJson(
      this,
    );
  }
}

abstract class _ToDoModel extends ToDoModel {
  factory _ToDoModel(
      {required final String id,
      required final String title,
      required final String description,
      final bool completed}) = _$_ToDoModel;
  _ToDoModel._() : super._();

  factory _ToDoModel.fromJson(Map<String, dynamic> json) =
      _$_ToDoModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoModelCopyWith<_$_ToDoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
