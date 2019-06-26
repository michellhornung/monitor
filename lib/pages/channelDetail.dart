import 'package:flutter/material.dart';

class ChannelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETALHES CANAIS'),
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
                        'Ativos:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 16.0,
                        ),
                        Text(' Em atendimento: 935'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.pause,
                          color: Colors.blue,
                          size: 16.0,
                        ),
                        Text(' Aguardando: 5085'),
                      ],
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Ura',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('ALIVE-DKVOX-01'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Porta',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('3001'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Aplicação',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('Verancard'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'ANI',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('1146394457'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'DNIS',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('1125697678'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Status',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('Discando'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Início',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('12/04/2016 - 16:41:27'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Duração',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('002'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Total Hora',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('10742'),
                    SizedBox(
                      height: 10.0,
                    ),
                    Title(
                      color: Colors.black,
                      child: Text(
                        'Total Dia',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text('10742'),
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
