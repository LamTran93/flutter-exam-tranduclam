import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Row(
        children: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your destination',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
