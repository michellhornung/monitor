import 'package:flutter/material.dart';
import 'package:monitor/model/SO.dart';

class SOCard extends StatelessWidget {
  const SOCard({Key key, this.so}) : super(key: key);
  final SO so;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return Card(
        color: so.colour,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(so.icon, size: 40.0, color: textStyle.color),
                SizedBox(
                  height: 10.0,
                ),
                Text(so.title, style: textStyle),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    so.value,
                    style: TextStyle(fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
        ));
  }
}
