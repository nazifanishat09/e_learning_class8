import 'package:class_8/src/pages/page.dart';
import 'package:class_8/src/pages/widgets/customText.dart';
import 'package:flutter/material.dart';

class Searchber extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextSelectionTheme(
        data: TextSelectionThemeData(
          selectionColor: mainC,
          cursorColor: mainC,
          selectionHandleColor: mainC,
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hint: CustomTextWidgets(
              title: " Search for product..",
              fC: Colors.grey,
              fS: 18,
            ),
            prefixIcon: Icon(Icons.search, size: 25, color: Colors.grey),
            suffixIcon: Icon(Icons.tune, color: Colors.grey),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
