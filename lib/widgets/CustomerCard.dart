import 'package:flutter/material.dart';
import 'package:monitor/model/Customer.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({Key key, this.customer}) : super(key: key);
  final Customer customer;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return Card(
        color: customer.colour,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(customer.icon, size: 30.0, color: textStyle.color),
                SizedBox(
                  height: 10.0,
                ),
                Text(customer.customerName, style: textStyle),
              ]),
        ));
  }
}
