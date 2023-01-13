// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class notion extends StatelessWidget {
  const notion({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Les types'),
        ),
        body: ListView(children: [
          SingleChildScrollView(
              child: Column(
            children: [
              for (int index = 0; index < 20; index++) _buildnotion(),
            ],
          ))
        ]));
  }
}

Widget _buildnotion() {
  return Card(
    child: Column(children: const [
      Text(
        " int, double",
        style: TextStyle(color: Colors.blue, fontSize: 25),
        overflow: TextOverflow.ellipsis,
      ),
      Text(
        " Nombres.",
        style: TextStyle(color: Colors.black, fontSize: 20),
        overflow: TextOverflow.ellipsis,
      ),
      SizedBox(
        width: double.infinity,
        child: Card(
          color: Color.fromARGB(255, 216, 216, 216),
          child: Text(" int monEntier = 2; \n double monReel = 1.856;"),
        ),
      ),
    ]),
  );
}
