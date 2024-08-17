import 'package:flutter/material.dart';
import 'package:flutter_exam/widgets/small/choosecard.dart';

class ChooseList extends StatelessWidget {
  const ChooseList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ChooseCard(
              name: 'Hotels',
              icon: Icons.hotel,
              iconColor: Colors.orange[500],
              backgroundColor: Colors.orange[100]),
          ChooseCard(
              name: 'Flights',
              icon: Icons.flight,
              iconColor: Colors.red[500],
              backgroundColor: Colors.red[100]),
          ChooseCard(
              name: 'All',
              icon: Icons.directions_car,
              iconColor: Colors.blue[500],
              backgroundColor: Colors.blue[100]),
        ],
      ),
    );
  }
}
