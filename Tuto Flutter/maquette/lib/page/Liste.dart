import 'package:flutter/material.dart';
import 'package:maquette/page/recipeFormScreen.dart';
class liste extends StatefulWidget {
  const liste({Key? key}) : super(key: key);

  @override
  State<liste> createState() => _listeState();
}

class _listeState extends State<liste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Liste de Piece disponible'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('Piece de Plastique 1 '),
            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('Piece de Plastique 2 '),

            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('Piece de Plastique 3 '),

            ),
            ListTile(
              leading: Icon(Icons.abc),
              title: Text('Piece de Plastique 4 '),

            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => recipeFormScreen()));
          },
          child: Icon(Icons.add),
        )
    );
  }
}