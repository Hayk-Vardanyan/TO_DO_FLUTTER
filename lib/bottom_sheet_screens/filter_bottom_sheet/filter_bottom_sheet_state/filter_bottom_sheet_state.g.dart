// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_bottom_sheet_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FilterBottomSheetState on _FilterBottomSheetState, Store {
  late final _$filterTypeAtom =
      Atom(name: '_FilterBottomSheetState.filterType', context: context);

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

  late final _$_FilterBottomSheetStateActionController =
      ActionController(name: '_FilterBottomSheetState', context: context);

  @override
  void onChecked(FilterType type) {
    final _$actionInfo = _$_FilterBottomSheetStateActionController.startAction(
        name: '_FilterBottomSheetState.onChecked');
    try {
      return super.onChecked(type);
    } finally {
      _$_FilterBottomSheetStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
filterType: ${filterType}
    ''';
  }
}
