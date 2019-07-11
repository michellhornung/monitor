import 'package:flutter/material.dart';

class CustomerGridView extends StatelessWidget {
  const CustomerGridView({
    Key key,
    @required List<String> listViewData,
    @required this.colour,
    @required this.icon,
    this.cardChild,
  })  : _listViewData = listViewData,
        super(key: key);

  final List<String> _listViewData;
  final Color colour;
  final IconData icon;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(8.0),
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 5.0,
      children: _listViewData
          .map(
            (data) => Card(
              child: cardChild,
              color: colour,
            ),
          )
          .toList(),
    );
  }
}
