import 'package:flutter/material.dart';
import 'package:monitor/widgets/CustomerGridView.dart';
import 'package:monitor/widgets/AppDrawer.dart';
import 'package:monitor/widgets/IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color errorCardColor = Colors.redAccent;
const warningCardColor = Colors.yellow;
const goodCardColor = Colors.green;

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  final List<String> _listViewData = [
    "LH TEC",
    "DKVOX",
    "RESLUT",
    "XYZ",
    "AIRBOT",
    "IT4U",
    "HAMMERCODE",
    "DRIVEN",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('OVERVIEW'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/DrillDown');
        },
        child: CustomerGridView(
          colour: errorCardColor,
          cardChild: IconContent(
            icon: FontAwesomeIcons.phone,
            label: _listViewData.elementAt(1),
          ),
          listViewData: _listViewData,
        ),
      ),
    );
  }
}
