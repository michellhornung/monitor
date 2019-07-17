import 'package:flutter/material.dart';
import 'package:monitor/model/Service.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({Key key, this.service}) : super(key: key);
  final Service service;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return Card(
        color: service.colour,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  service.icon,
                  size: 30.0,
                  color: textStyle.color,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(service.title, style: textStyle),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    service.value,
                    style: TextStyle(fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
        ));
  }
}
