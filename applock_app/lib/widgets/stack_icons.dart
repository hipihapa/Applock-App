import 'package:flutter/material.dart';

class StackIcons extends StatelessWidget {
  final String imagePath;
  const StackIcons({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[50],
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
