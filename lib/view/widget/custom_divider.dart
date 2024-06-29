import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.0,
      color: Colors.black,
      margin: const EdgeInsets.symmetric(
          vertical: 10.0), // Adjust vertical spacing as needed
    );
  }
}
