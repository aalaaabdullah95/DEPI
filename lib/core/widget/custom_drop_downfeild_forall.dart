import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';

class CustomDropDownForALl extends StatelessWidget {
  final List<DropdownMenuEntry<String>> items;

  const CustomDropDownForALl({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownMenu<String>(
            menuHeight: 200,
            width: double.infinity,
            menuStyle: const MenuStyle(
              backgroundColor: WidgetStatePropertyAll(
                Colors.white,
              ),
            ),
            dropdownMenuEntries: items,
            inputDecorationTheme: InputDecorationTheme(
              border: OutLineBorder(),
              enabledBorder: OutLineBorder(),
              focusedBorder: OutLineBorder(),
            ),
            trailingIcon: const Icon(
              Icons.arrow_drop_down_circle_rounded,
              color: MyColors.button,
            ),
            onSelected: (value) {
              // Handle selection
              print('Selected value: $value');
            },
          ),
        ),
      ),
    );
  }

  OutlineInputBorder OutLineBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
