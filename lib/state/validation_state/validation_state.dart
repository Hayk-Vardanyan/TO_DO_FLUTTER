import 'package:mobx/mobx.dart';

part 'validation_state.g.dart';

class ValidationState = _ValidationState with _$ValidationState;

abstract class _ValidationState with Store {
  final error = LoginStateErrors();

  @observable
  String title = '';

  @observable
  String description = '';

  List<ReactionDisposer>? _disposers;

  void setupValidations() {
    if (_disposers != null) {
      return;
    }
    _disposers = [
      reaction((_) => title, validateTitle),
      reaction((_) => description, validateDescription),
    ];
  }

  void dispose() {
    if (_disposers == null) {
      return;
    }
    for (final d in _disposers!) {
      d();
    }
  }

  @action
  void validateTitle(_) {
    if (title.isEmpty) {
      error.titleError = 'The name is required';
    } else {
      error.titleError = null;
    }
  }

  @action
  void validateDescription(_) {
    if (description.isEmpty) {
      error.descriptionError = 'The description is required';
    } else {
      error.descriptionError = null;
    }
  }
}

class LoginStateErrors = _LoginStateErrors with _$LoginStateErrors;

abstract class _LoginStateErrors with Store {
  @observable
  String? titleError;

  @observable
  String? descriptionError;

  @computed
  bool get hasErrors => titleError != null || descriptionError != null;
}
