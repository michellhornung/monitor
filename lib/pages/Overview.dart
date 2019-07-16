import 'package:flutter/material.dart';
import 'package:monitor/widgets/AppDrawer.dart';
import 'package:monitor/data/CustomerData.dart';
import 'package:monitor/widgets/CustomerCard.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OVERVIEW'),
      ),
      drawer: AppDrawer(),
      body: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/DrillDown');
        },
        child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(6.0),
            children: List.generate(customers.length, (index) {
              return Center(
                child: CustomerCard(customer: customers[index]),
              );
            })),
      ),
    );
  }
}
