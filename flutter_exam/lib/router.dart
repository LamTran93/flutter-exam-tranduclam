import 'package:flutter/material.dart';
import 'package:flutter_exam/screens/emptypage.dart';
import 'package:flutter_exam/screens/homepage.dart';

class PageRouter extends StatefulWidget {
  const PageRouter({super.key});

  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<PageRouter> {
  final List<Widget> screens = [
    HomePage(),
    const EmptyPage(),
    const EmptyPage(),
    const EmptyPage(),
  ];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple[600],
        unselectedItemColor: Colors.purple[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.cases), label: 'Reservations'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
