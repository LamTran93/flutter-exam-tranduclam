import 'package:flutter/material.dart';
import 'package:flutter_exam/router.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exam Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageRouter(),
    );
  }
}