import 'package:flutter/material.dart';
import 'package:monitor/data/SOData.dart';
import 'package:monitor/widgets/SOCard.dart';

class SO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(6.0),
          children: List.generate(so.length, (index) {
            return Center(
              child: SOCard(so: so[index]),
            );
          })),
    );
  }
}
