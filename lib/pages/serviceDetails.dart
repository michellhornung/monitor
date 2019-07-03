import 'package:flutter/material.dart';
import 'package:monitor/widgets/dataTableServiceDetails.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES SERVIÇOS'),
      ),
      body: Container(
        child: GridView.count(
            crossAxisCount: 1,
            children: List.generate(100, (index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: GridTile(
//                    footer: Container(
//                      decoration: BoxDecoration(
//                        color: Colors.grey,
//                        borderRadius: BorderRadius.circular(5.0),
//                      ),
//                      child: Text(
//                        'alive $index',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(
//                          fontSize: 16.0,
//                          letterSpacing: 0.5,
//                          color: Colors.black,
//                        ),
//                      ),
//                    ),
                    header: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 0.1,
                        horizontal: 90.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
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
                    child: DataTableServiceDetails(),
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
