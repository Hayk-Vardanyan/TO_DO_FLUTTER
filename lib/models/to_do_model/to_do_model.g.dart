// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoModel _$$_ToDoModelFromJson(Map<String, dynamic> json) => _$_ToDoModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ToDoModelToJson(_$_ToDoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
    };
