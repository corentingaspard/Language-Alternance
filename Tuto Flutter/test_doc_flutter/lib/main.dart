import 'package:flutter/material.dart';
import 'package:test_doc_flutter/page/exemple1.dart';
import 'package:test_doc_flutter/page/exemple3.dart';
import 'package:test_doc_flutter/page/exemple4.dart';
import 'package:test_doc_flutter/page/exempleCard.dart';
import 'package:test_doc_flutter/page/exempleStack.dart';

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
            child: Column(children: [Expanded(child: _buildMain(context))])));
  }
}

Widget _buildMain(BuildContext context) {
  return Card(
      child: ListView(children: [
    SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const Text(
            'Exemple de la doc',
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            "Voici les exemple image de la doc que j'ai reproduit",
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.green, "Exemple 1", const exemple1(),
              Icons.add_a_photo),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.orangeAccent, "Exemple 2",
              const exemple2(), Icons.list),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.redAccent, "Exemple 3", const exemple3(),
              Icons.account_tree),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.blueGrey, "Exemple 4", const exemple4(),
              Icons.account_balance),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.black, "Exemple Stack",
              const exempleStack(), Icons.account_circle),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildButton(context, Colors.purple, "Exemple Card",
              const exempleCard(), Icons.view_compact_alt_rounded),
          const Padding(padding: EdgeInsets.only(top: 20)),
        ],
      ),
    ),
  ]));
}

Widget _buildButton(context, color, texte, redirection, icon) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      minimumSize: const Size.fromHeight(50), // NEW
    ),
    onPressed: () {
      Navigator.push(
          context, PageRouteBuilder(pageBuilder: (_, __, ___) => redirection));
    },
    label: Text(
      texte,
      style: const TextStyle(fontSize: 20),
    ),
    icon: Icon(icon),
  );
}
