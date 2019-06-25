import 'package:flutter/material.dart';
import 'package:monitor/pages/alarmDrillDownDetails.dart';

class AlarmDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES ALARME'),
      ),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              shape: BoxShape.rectangle,
              border: Border.all(
                style: BorderStyle.solid,
                width: 1.0,
                color: Colors.grey[300],
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Title(
                  color: Colors.black,
                  child: Text(
                    '_ ERROR: DSC',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                ),
                Text('__ DSC'),
                Divider(
                  height: 30,
                ),
                Text('__ 29/04/2019 02:13:45'),
                Divider(
                  height: 30,
                ),
                Text('__ ORA-01403: no data found'),
                Divider(
                  height: 30,
                ),
                Text('__ SP_ALIVE_JOB_MANUT_DB at LINE: 1019'),
                Divider(
                  height: 30,
                ),
                RaisedButton(
                  child: Icon(
                    Icons.open_in_new,
                  ),
                  shape: CircleBorder(),
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AlarmDrillDownDetails()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
