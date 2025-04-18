import 'package:flutter/material.dart';

class SmallHeader extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? margin;

  const SmallHeader({
    Key? key,
    required this.title,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xFF868698),
          height: 1.6,
        ),
      ),
    );
  }
}
