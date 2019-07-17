import 'package:monitor/model/Service.dart';
import 'package:monitor/constants/Colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Service> service = [
  Service(
      icon: FontAwesomeIcons.mapPin,
      colour: errorCardColor,
      title: 'UID',
      value: 'root'),
  Service(
      icon: FontAwesomeIcons.tasks,
      colour: warningCardColor,
      title: 'PPID',
      value: '1'),
  Service(
      icon: FontAwesomeIcons.desktop,
      colour: warningCardColor,
      title: 'C',
      value: '0'),
  Service(
      icon: FontAwesomeIcons.stackOverflow,
      colour: uncolored,
      title: 'STIME',
      value: '08:15'),
  Service(
      icon: FontAwesomeIcons.pills,
      colour: uncolored,
      title: 'TTY',
      value: '?'),
  Service(
      icon: FontAwesomeIcons.pills,
      colour: uncolored,
      title: 'TIME',
      value: '08:15'),
  Service(
      icon: FontAwesomeIcons.pills,
      colour: uncolored,
      title: 'CMD',
      value: 'lh.aliveserver.IvrService'),
];
