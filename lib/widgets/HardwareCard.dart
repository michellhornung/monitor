import 'package:flutter/material.dart';
import 'package:monitor/model/Hardware.dart';

class HardwareCard extends StatelessWidget {
  const HardwareCard({Key key, this.hardware}) : super(key: key);
  final Hardware hardware;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey[100],
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  hardware.icon,
                  size: 70.0,
                  color: hardware.colour,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  hardware.title,
                  style: TextStyle(color: hardware.colour, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ]),
        ));
  }
}
