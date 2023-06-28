import 'package:mobx/mobx.dart';
import 'package:untitled2/constants/filter_type.dart';

part 'filter_bottom_sheet_state.g.dart';

// ignore: library_private_types_in_public_api
class FilterBottomSheetState = _FilterBottomSheetState
    with _$FilterBottomSheetState;

abstract class _FilterBottomSheetState with Store {
  @observable
  FilterType filterType = FilterType.ALL;

  @action
  void onChecked(FilterType type) {
    if (type != filterType) {
      filterType = type;
    }
  }
}
