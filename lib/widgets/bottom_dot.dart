import 'package:flutter/material.dart';

class BottomDot extends StatelessWidget {
  final bool isSelected;
  const BottomDot({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      height: 13,
      width: isSelected?27:13,
      decoration: BoxDecoration(
        // shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(50),
          color: Colors.green
      ),);
  }
}
