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
      icon: FontAwesomeIcons.accusoft,
      customerName: 'RESLUT'),
  Customer(
      colour: goodCardColor,
      icon: FontAwesomeIcons.acquisitionsIncorporated,
      customerName: 'XYZ'),
  Customer(
      colour: goodCardColor,
      icon: FontAwesomeIcons.infinity,
      customerName: 'AIRBOT'),
  Customer(
      colour: goodCardColor,
      icon: FontAwesomeIcons.apple,
      customerName: 'APPLE'),
  Customer(
    colour: goodCardColor,
    icon: FontAwesomeIcons.handHolding,
    customerName: 'IT4U',
  ),
  Customer(
    colour: goodCardColor,
    icon: FontAwesomeIcons.car,
    customerName: 'DRIVEN',
  ),
];
