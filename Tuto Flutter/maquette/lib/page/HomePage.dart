// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'liste.dart';
import 'Liste2.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premier APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Premier APP',
            ),
            const Text(
              'Voici une petit description',
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const liste()));
              },
              label: const Text(
                "Liste des pièces",
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.list),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.orangeAccent)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const Liste2()));
              },
              label: const Text(
                "Liste Test",
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.list),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}
