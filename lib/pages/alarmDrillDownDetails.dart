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
  final List<String> channelList = [
    "Todos",
    "Ativos",
    "HW01",
    "HW02",
    "HW03",
    "HW04",
  ];

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
                          'at org.hibernate.collection.internal.AbstractPersistentCollection.throwLazyInitializationException' +
                          '(AbstractPersistentCollection.java:567)',
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
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: channelList.length,
                          itemBuilder: (context, indice) {
                            return RaisedButton(
                              shape: CircleBorder(),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ChannelDetails()));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 2),
                                width: 100,
                                height: 90,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.orangeAccent,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      channelList[indice],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Em atendimento: 944",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Text(
                                      "Aguardando: 5046",
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Icon(Icons.open_in_new)
                                  ],
                                ),
                              ),
                            );
                          }),
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
