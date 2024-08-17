import 'package:flutter/material.dart';

class ChooseCard extends StatelessWidget {
  const ChooseCard({super.key, required this.name, required this.icon, this.iconColor, this.backgroundColor});

  final String name;
  final IconData icon;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 100,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.rectangle,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}