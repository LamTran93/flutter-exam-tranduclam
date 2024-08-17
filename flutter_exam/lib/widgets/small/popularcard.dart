import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/model/place.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key,required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    var baseUrl = kIsWeb ? 'http://localhost:8080' : 'http://10.0.2.2:8080';
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.network('$baseUrl/${place.picture}', width: 150, height: 150, fit: BoxFit.cover,),
        Column(
          children: [
            Text(place.name, style: const TextStyle(color: Colors.white, fontSize: 15)),
            Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow),
                  Text(place.rating.toString(), style: const TextStyle(color: Colors.yellow)),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}