import 'package:monitor/model/Customer.dart';
import 'package:monitor/constants/Colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Customer> customers = [
  Customer(
      colour: errorCardColor,
      icon: FontAwesomeIcons.phone,
      customerName: 'LHTEC'),
  Customer(
      colour: warningCardColor,
      icon: FontAwesomeIcons.infinity,
      customerName: 'DKVOX'),
  Customer(
      colour: goodCardColor,
      icon: FontAwesomeIcons.check,
      customerName: 'RESLUT'),
  Customer(
    colour: goodCardColor,
    icon: FontAwesomeIcons.car,
    customerName: 'IT4U',
  ),
];
