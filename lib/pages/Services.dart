import 'package:flutter/material.dart';
import 'package:monitor/data/ServiceData.dart';
import 'package:monitor/widgets/ServiceCard.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 3,
          padding: EdgeInsets.all(18.0),
          children: List.generate(service.length, (index) {
            return Center(
              child: ServiceCard(service: service[index]),
            );
          })),
    );
  }
}
