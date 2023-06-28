// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ValidationState on _ValidationState, Store {
  late final _$titleAtom =
      Atom(name: '_ValidationState.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_ValidationState.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$_ValidationStateActionController =
      ActionController(name: '_ValidationState', context: context);

  @override
  void validateTitle(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateTitle');
    try {
      return super.validateTitle(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateDescription(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateDescription');
    try {
      return super.validateDescription(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description}
    ''';
  }
}

mixin _$LoginStateErrors on _LoginStateErrors, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_LoginStateErrors.hasErrors'))
          .value;

  late final _$titleErrorAtom =
      Atom(name: '_LoginStateErrors.titleError', context: context);

  @override
  String? get titleError {
    _$titleErrorAtom.reportRead();
    return super.titleError;
  }

  @override
  set titleError(String? value) {
    _$titleErrorAtom.reportWrite(value, super.titleError, () {
      super.titleError = value;
    });
  }

  late final _$descriptionErrorAtom =
      Atom(name: '_LoginStateErrors.descriptionError', context: context);

  @override
  String? get descriptionError {
    _$descriptionErrorAtom.reportRead();
    return super.descriptionError;
  }

  @override
  set descriptionError(String? value) {
    _$descriptionErrorAtom.reportWrite(value, super.descriptionError, () {
      super.descriptionError = value;
    });
  }

  @override
  String toString() {
    return '''
titleError: ${titleError},
descriptionError: ${descriptionError},
hasErrors: ${hasErrors}
    ''';
  }
}
