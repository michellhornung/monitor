import 'package:flutter/material.dart';

class Oracle extends StatefulWidget {
  @override
  _OracleState createState() => _OracleState();
}

class _OracleState extends State<Oracle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oracle'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 5.0,
                  padding: EdgeInsets.all(30.0),
                  children: List.generate(6, (index) {
                    return Container(
                      padding: EdgeInsets.all(30.0),
                      child: Center(
                        child: GridTile(
                          footer: Text(
                            'Item $index',
                            textAlign: TextAlign.center,
                          ),
                          header: Text(
                            'SubItem $index',
                            textAlign: TextAlign.center,
                          ),
                          child: Icon(Icons.data_usage,
                              size: 40.0, color: Colors.white30),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(200.0),
                      ),
                      margin: EdgeInsets.all(1.0),
                    );
                  })),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 5.0,
                  padding: EdgeInsets.all(30.0),
                  children: List.generate(2, (index) {
                    return Container(
                      padding: EdgeInsets.all(30.0),
                      child: Center(
                        child: GridTile(
                          footer: Text(
                            'Item $index',
                            textAlign: TextAlign.center,
                          ),
                          header: Text(
                            'SubItem $index',
                            textAlign: TextAlign.center,
                          ),
                          child: Icon(Icons.data_usage,
                              size: 40.0, color: Colors.white30),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green[400],
                        //borderRadius: BorderRadius.circular(200.0),
                      ),
                      margin: EdgeInsets.all(1.0),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
