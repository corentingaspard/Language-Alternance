import 'package:flutter/material.dart';
import 'package:test_doc_flutter/page/exemple1.dart';
import 'package:test_doc_flutter/page/exemple3.dart';

import 'page/exemple2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choix des Exemple',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Exemple de la doc',
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              "Voici les exemple image de la doc que j'ai reproduit",
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
                        pageBuilder: (_, __, ___) => const exemple1()));
              },
              label: const Text(
                "Exemple 1",
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.add_a_photo),
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
                        pageBuilder: (_, __, ___) => const exemple2()));
              },
              label: const Text(
                "Exemple 2",
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.list),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const exemple3()));
              },
              label: const Text(
                "Exemple 3",
                style: TextStyle(fontSize: 20),
              ),
              icon: const Icon(Icons.account_tree),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}
