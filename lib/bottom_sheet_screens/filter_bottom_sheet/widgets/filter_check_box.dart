import 'package:flutter/material.dart';
import 'package:untitled2/constants/filter_type.dart';

class FilterCheckBox extends StatelessWidget {
  final FilterType sortType;
  final String typeName;
  final bool isChecked;
  final void Function(FilterType) onChecked;

  const FilterCheckBox({
    Key? key,
    required this.sortType,
    required this.isChecked,
    required this.onChecked,
    required this.typeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChecked(sortType);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  typeName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.deepPurple,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Checkbox(
                  fillColor: MaterialStateProperty.all(Colors.transparent),
                  activeColor: Colors.grey,
                  checkColor: Colors.purple,
                  visualDensity: const VisualDensity(
                    horizontal: -4,
                    vertical: -4,
                  ),
                  value: isChecked,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 8),
            const Divider(
              color: Colors.purple,
              thickness: 1,
              endIndent: 1,
              indent: 1,
            ),
          ],
        ),
      ),
    );
  }
}
