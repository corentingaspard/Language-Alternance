import 'package:flutter/material.dart';
import 'package:flutter_application_presentation/page/notion.dart';

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
  late List catalogdata;
  /* Future<String> loadData() async {
    var data = await rootBundle.loadString("data.json");
    setState(() {
      catalogdata = json.decode(data);
    });
    return "success";
  }

  void initState() {
    loadData();
    super.initState();
  } */

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
            style: TextStyle(fontSize: 25),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          _buildbutton(context, "Exemple 1", const notion()),
        ],
      ),
    ),
  ]));
}

Widget _buildbutton(context, texte, redirection) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      minimumSize: const Size.fromHeight(50),
    ),
    onPressed: () {
      Navigator.push(
          context, PageRouteBuilder(pageBuilder: (_, __, ___) => redirection));
    },
    child: Text(
      texte,
      selectionColor: Colors.white,
      style: const TextStyle(fontSize: 20),
    ),
  );
}
