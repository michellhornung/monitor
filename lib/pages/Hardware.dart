import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:monitor/pages/SO.dart';
import 'package:monitor/pages/Services.dart';

class Hardware extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(FontAwesomeIcons.desktop),
                text: 'Sistema Operacional',
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.server),
                text: 'Serviços',
              ),
            ],
          ),
          title: Text('HARDWARE'),
        ),
        body: TabBarView(
          children: [
            SO(),
            Services(),
          ],
        ),
      ),
    );
  }
}
