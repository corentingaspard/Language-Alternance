import 'package:flutter/material.dart';
import 'package:maquette/page/recipeFormScreen.dart';

import 'Liste.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premier APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Premier APP',
            ),
            Text(
              'Voici une petit description',
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton.icon(
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => liste()));
              },
              label: Text(
                "Liste des pièces",
                style: TextStyle(fontSize: 20),
              ),
              icon: Icon(Icons.list),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
          ],
        ),
      ),
    );
  }
}
