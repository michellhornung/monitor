import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Error: DSC',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('- DSC'),
                    Text('- 29/04/2019 02:13:45'),
                    Text('- ORA-01403: no data found'),
                    Text('- SP_ALIVE_JOB_MANUT_DB at LINE: 1019'),
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
                  )),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
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
                  color: Colors.red,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Title(
                      color: Colors.red,
                      child: Text(
                        'Stacktrace:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Text(
                      'org.hibernate.LazyInitializationException: ' +
                          'failed to lazily initialize a collection of ' +
                          'role: lh.dsc.model.Campanha.devices, could not initialize proxy - no Session ' +
                          'at org.hibernate.collection.internal.AbstractPersistentCollection.throwLazyInitializationException' +
                          '(AbstractPersistentCollection.java:567)',
                      style: TextStyle(color: Colors.red),
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
