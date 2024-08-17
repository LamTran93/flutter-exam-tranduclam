
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exam/model/place.dart';
import 'package:flutter_exam/widgets/small/popularcard.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  List<Place> popularList = [];
  bool isLoaded = false;

  Widget _buildImageColumn() {
    if (isLoaded) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildImageRow(1),
            _buildImageRow(3),
          ]);
    } else {
      getPlaces();
      return const Text('Loading...');
    }
  }

  Widget _buildImageRow(int imageIndex) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PopularCard(place: popularList[imageIndex - 1]),
        PopularCard(place: popularList[imageIndex ]),
      ],
    );
  }

  getPlaces() async {
    var baseUrl = kIsWeb ? 'http://localhost:8080' : 'http://10.0.2.2:8080';
    var res = await Dio()
        .get('$baseUrl/api/places');
    List<Place> list = (res.data as List).map((e) => Place.fromJson(e)).toList();
    setState(() {
      isLoaded = true;
      popularList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20), child: _buildImageColumn());
  }
}
