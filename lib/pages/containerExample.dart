import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES ALARME'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
              child: Text('One'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Two'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Three'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Four'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Five'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
              child: Text('Six'),
            ),
          ],
        ),
      ),
    );
  }
}
