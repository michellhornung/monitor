import 'package:flutter/material.dart';
import 'package:monitor/data/HardwareData.dart';
import 'package:monitor/widgets/HardwareCard.dart';

class Hardwares extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HARDWARES'),
        ),
        body: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/DrillDown');
          },
          child: GridView.count(
              crossAxisCount: 1,
              padding: EdgeInsets.all(18.0),
              children: List.generate(hardwares.length, (index) {
                return Center(
                  child: HardwareCard(hardware: hardwares[index]),
                );
              })),
        ));
  }
}
