import 'package:flutter/material.dart';

const dataBaseVersion =
    'Oracle Database 18c Express Edition Release 18.0.0.0.0 - Production';

class Database extends StatefulWidget {
  @override
  _DatabaseState createState() => _DatabaseState();
}

class _DatabaseState extends State<Database> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BANCO DE DADOS'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'ALIVE_CEP',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'ALIVE_CUS',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'ALIVE_GRV',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'ALIVE_REL',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'LHALIVE',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'SYSAUX',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'SYSTEM',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.cloud,
                          color: Colors.black,
                          size: 28.0,
                        ),
                        Text(
                          'UNDOTBS1',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.black),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.supervised_user_circle,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Text(
                          'USERS',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.white),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      color: Colors.lightBlue[400],
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                          size: 28.0,
                        ),
                        Text(
                          'TOTAL',
                          style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '0,292 GB',
                          style: new TextStyle(
                              fontSize: 12.0, color: Colors.white),
                        ),
                      ],
                    ),
                    width: 150.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                      color: Colors.blue[800],
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    dataBaseVersion,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
