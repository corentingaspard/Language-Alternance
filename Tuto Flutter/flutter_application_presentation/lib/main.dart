import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Accueil',
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
          centerTitle: true,
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
            'Choisissez l\'aspect à decouvrir',
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            "Voici les exemple image de la doc que j'ai reproduit",
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildbutton(context, Colors.green, "Exemple 1", const dsdsdf(),
              Icons.add_a_photo),
        ],
      ),
    ),
  ]));
}

Widget _buildbutton(context, color, texte, redirection, icon) {
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
      selectionColor: Colors.white,
      style: const TextStyle(fontSize: 20),
    ),
    icon: Icon(icon),
  );
}
