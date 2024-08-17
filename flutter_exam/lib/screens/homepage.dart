import 'package:flutter/material.dart';
import 'package:flutter_exam/widgets/chooselist.dart';
import 'package:flutter_exam/widgets/popular.dart';
import 'package:flutter_exam/widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Column(
          children: <Widget>[
            Text('Hi Guy!'),
            Text(
              'Where are you going next?',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [CustomSearchBar(), ChooseList(), Popular()],
        ),
      ),
    );
  }
}
