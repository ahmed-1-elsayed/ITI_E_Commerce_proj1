import 'package:flutter/material.dart';

class IconForCounter extends StatelessWidget {
  const IconForCounter({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}