import 'package:flutter/material.dart';
import 'package:monitor/widgets/dataTableSODetails.dart';

class SODetails extends StatefulWidget {
  @override
  _SODetailsState createState() => _SODetailsState();
}

class _SODetailsState extends State<SODetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES SO'),
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 1,
            children: List.generate(100, (index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: GridTile(
                    header: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 0.1,
                        horizontal: 90.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        'dkvox $index',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 0.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    child: DataTableSODetails(),
                  ),
                ),
                color: Colors.grey[300],
                margin: EdgeInsets.all(8.0),
              );
            })),
      ),
    );
  }
}
