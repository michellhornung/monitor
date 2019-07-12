import 'package:flutter/material.dart';
import 'package:monitor/widgets/AppDrawer.dart';
import 'package:monitor/constants/Colors.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('OVERVIEW'),
        ),
        drawer: AppDrawer(),
        body: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/DrillDown');
          },
          child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: List.generate(choices.length, (index) {
                return Center(
                  child: ChoiceCard(choice: choices[index]),
                );
              })),
        ));
  }
}

class Choice {
  const Choice({this.title, this.icon, this.colour});

  final String title;
  final IconData icon;
  final Color colour;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'LHTEC',
    icon: Icons.directions_car,
    colour: errorCardColor,
  ),
  const Choice(
    title: 'DKVOX',
    icon: Icons.directions_bike,
    colour: warningCardColor,
  ),
  const Choice(
    title: 'BOAT',
    icon: Icons.directions_boat,
    colour: warningCardColor,
  ),
  const Choice(
    title: 'BABYBUS',
    icon: Icons.directions_bus,
    colour: goodCardColor,
  ),
  const Choice(
    title: 'BABYBUS',
    icon: Icons.directions_bus,
    colour: goodCardColor,
  ),
  const Choice(
    title: 'BABYBUS',
    icon: Icons.directions_bus,
    colour: goodCardColor,
  ),
  const Choice(
    title: 'BABYBUS',
    icon: Icons.directions_bus,
    colour: goodCardColor,
  ),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return Card(
        color: choice.colour,
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(choice.icon, size: 80.0, color: textStyle.color),
                SizedBox(
                  height: 10.0,
                ),
                Text(choice.title, style: textStyle),
              ]),
        ));
  }
}
