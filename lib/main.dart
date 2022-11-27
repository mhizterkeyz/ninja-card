import 'package:flutter/material.dart';

void main() {
  runApp(const NinjaCard());
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Ninja Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/thumb.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[400],
              ),
              const Detail(name: 'NAME', value: 'Chun-Li'),
              const SizedBox(
                height: 30.0,
              ),
              const Detail(name: 'CURRENT NINJA LEVEL', value: '8'),
              const SizedBox(
                height: 30.0,
              ),
              Wrap(
                spacing: 10.0,
                children: [
                  Icon(Icons.email, color: Colors.grey[400]),
                  Text(
                    'chun.li@thenetninja.co.uk',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  final String name;

  final String value;

  const Detail({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        Text(name,
            style: const TextStyle(color: Colors.grey, letterSpacing: 2.0)),
        Text(value,
            style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold)),
      ],
    );
  }
}
