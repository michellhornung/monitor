import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Customer {
  final Color colour;
  final IconData icon;
  final String customerName;

  const Customer({
    @required this.colour,
    @required this.icon,
    @required this.customerName,
  });
}
