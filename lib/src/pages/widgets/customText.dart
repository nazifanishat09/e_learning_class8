import 'package:flutter/material.dart';

class CustomTextWidgets extends StatelessWidget {
  const CustomTextWidgets({
    super.key,
    required this.title,
    this.fS,
    this.fW,
    this.fC,
  });

  final String title;
  final double? fS;
  final FontWeight? fW;
  final Color? fC;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: fS, fontWeight: fW, color: fC),
    );
  }
}
