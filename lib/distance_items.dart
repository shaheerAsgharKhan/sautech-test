import 'package:flutter/material.dart';

import 'directions_model.dart';

class DistanceItem extends StatelessWidget {
  DistanceItem({@required this.distance});

  final Directions distance;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Origin',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Text(
              'destination',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            Text(distance.totalDistance),
          ],
        ),
      ),
    );
  }
}
