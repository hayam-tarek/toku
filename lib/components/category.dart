import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Function()? onTap;
  const Category({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 70,
        color: backgroundColor,
        child: Text(
          "$text.",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
