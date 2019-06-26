import 'package:flutter/material.dart';
import 'package:monitor/pages/channelDetail.dart';

class AlarmDrillDownDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DRILL DOWN ALARMES'),
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
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
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Detalhes:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('- Erro ao tentar salvar A Campanha %s.;'),
                    Text('- IN21720E'),
                    Text('- Line: 684'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              height: 400.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Stacktrace:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'org.hibernate.LazyInitializationException: ' +
                          'failed to lazily initialize a collection of ' +
                          'role: lh.dsc.model.Campanha.devices, could not initialize proxy - no Session ' +
                          ' at org.hibernate.collection.internal.AbstractPersistentCollection.throwLazyInitializationException(AbstractPersistentCollection.java:567)',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 1.0,
                  color: Colors.grey[300],
                ),
              ),
              height: 150.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Canais:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 100.0,
                      child: new ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: 10,
                        // itemExtent: 10.0,
                        // reverse: true, //makes the list appear in descending order
                        itemBuilder: (BuildContext context, int index) {
                          return _buildItems(index, context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildItems(int index, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10.0),
    child: Row(
      children: [
        Row(
          children: [
            ButtonTheme(
              minWidth: 100.0,
              height: 100.0,
              child: RaisedButton(
                child: Icon(
                  Icons.open_in_new,
                ),
                shape: CircleBorder(),
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ChannelDetails()));
                },
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
