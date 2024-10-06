import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextField(
        cursorColor: MyColors.textColor,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          labelText: 'Search',
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          filled: true,
          fillColor: const Color(0xffE9E9E9),
          contentPadding: EdgeInsets.zero,
          enabledBorder: outlineborder(),
          focusedBorder: outlineborder(),
          border: outlineborder(),
        ),
      ),
    );
  }

  OutlineInputBorder outlineborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          10,
        ),
        borderSide: const BorderSide(
          color: Color(0xffE9E9E9),
        ));
  }
}
