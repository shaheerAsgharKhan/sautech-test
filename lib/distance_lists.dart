import 'package:flutter/material.dart';

import 'directions_model.dart';
import 'distance_items.dart';

class DistanceList extends StatelessWidget {
  final List<Directions> distances;

  DistanceList(this.distances);

  @override
  Widget build(BuildContext context) {
    return distances.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Text(
                  'No input added yet!',
                ),
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return DistanceItem(
                distance: distances[index],
              );
            },
            itemCount: distances.length,
          );
  }
}
