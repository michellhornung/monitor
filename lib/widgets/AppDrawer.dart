import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("John Rambo"),
            accountEmail: Text("rambo@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blueGrey
                  : Colors.blueGrey,
              child: Text(
                "JR",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            trailing: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, '/Overview');
            },
          ),
          ListTile(
            title: Text("LH Alive Monitor®"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/LHAliveMonitorInfo');
            },
          ),
          ListTile(
            title: Text("LOGOUT"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, '/Logout');
            },
          ),
        ],
      ),
    );
  }
}
