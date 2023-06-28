import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled2/bottom_sheet_screens/filter_bottom_sheet/filter_bottom_sheet_state/filter_bottom_sheet_state.dart';
import 'package:untitled2/constants/filter_type.dart';

import 'widgets/filter_check_box.dart';

class FilterBottomSheet extends StatefulWidget {
  final FilterType filterType;

  const FilterBottomSheet({
    Key? key,
    required this.filterType,
  }) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final FilterBottomSheetState _sortBottomSheetState = FilterBottomSheetState();

  @override
  void initState() {
    _sortBottomSheetState.filterType = widget.filterType;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 12),
          const Text(
            'Filter todos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 4),
          Column(
            children: [
              Observer(
                builder: (context) {
                  return FilterCheckBox(
                    typeName: 'All',
                    sortType: FilterType.ALL,
                    isChecked:
                        _sortBottomSheetState.filterType == FilterType.ALL,
                    onChecked: _sortBottomSheetState.onChecked,
                  );
                },
              ),
              Observer(
                builder: (context) {
                  return FilterCheckBox(
                    typeName: 'Active',
                    sortType: FilterType.ACTIVE,
                    isChecked:
                        _sortBottomSheetState.filterType == FilterType.ACTIVE,
                    onChecked: _sortBottomSheetState.onChecked,
                  );
                },
              ),
              Observer(
                builder: (context) {
                  return FilterCheckBox(
                    typeName: 'Completed',
                    sortType: FilterType.COMPLETED,
                    isChecked: _sortBottomSheetState.filterType ==
                        FilterType.COMPLETED,
                    onChecked: _sortBottomSheetState.onChecked,
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _sortBottomSheetState.filterType);
              },
              child: const Text(
                'Filter',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
