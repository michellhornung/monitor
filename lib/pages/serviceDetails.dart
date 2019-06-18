import 'package:flutter/material.dart';
import 'package:monitor/pages/drilldown.dart';
import 'package:monitor/pages/login.dart';
import 'package:monitor/pages/dataTableDemo.dart';
import 'package:monitor/widgets/dataTableWidget.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Serviços'),
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 1,
            children: List.generate(100, (index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: GridTile(
                    footer: Text(
                      'alive $index',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                        color: Colors.black,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    header: Text(
                      'alive $index',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                        color: Colors.black,
                        backgroundColor: Colors.orange,
                      ),
                    ),
                    child: DataTableWidget(),
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
