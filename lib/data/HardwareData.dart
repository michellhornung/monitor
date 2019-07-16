import 'package:monitor/model/Hardware.dart';
import 'package:monitor/constants/Colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<Hardware> hardwares = [
  Hardware(
    colour: errorCardColor,
    icon: FontAwesomeIcons.desktop,
    title: 'SISTEMA OPERACIONAL',
  ),
  Hardware(
    colour: uncolored,
    icon: FontAwesomeIcons.server,
    title: 'SERVIÇOS',
  ),
];
