import 'package:monitor/model/SO.dart';
import 'package:monitor/constants/Colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<SO> so = [
  SO(
      icon: FontAwesomeIcons.mapPin,
      colour: errorCardColor,
      title: 'Top',
      value: '15:51:25 up 7:35'),
  SO(
      icon: FontAwesomeIcons.tasks,
      colour: uncolored,
      title: 'Tasks',
      value: '272 total 1 running'),
  SO(
      icon: FontAwesomeIcons.desktop,
      colour: uncolored,
      title: 'Cpu',
      value: '0.8%us'),
  SO(
      icon: FontAwesomeIcons.stackOverflow,
      colour: uncolored,
      title: 'Top',
      value: '1645972k total'),
  SO(
      icon: FontAwesomeIcons.pills,
      colour: uncolored,
      title: 'Swap',
      value: '7340028k total'),
];
