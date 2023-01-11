// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class exemple4 extends StatelessWidget {
  const exemple4({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Exemple 2'),
        ),
        body: ListView(
          children: [
            _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
            _tile('The Castro Theater', '429 Castro St', Icons.theaters),
            _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
            _tile('Roxie Theater', '3117 16th St', Icons.theaters),
            _tile('United Artists Stonestown Twin', '501 Buckingham Way',
                Icons.theaters),
            _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
            const Divider(),
            _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
            _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
            _tile('Chaiya Thai Restaurant', '272 Claremont Blvd',
                Icons.restaurant),
            _tile('La Ciccia', '291 30th St', Icons.restaurant),
            _tile('Au lotus bleu', '300 rue de la france', Icons.restaurant),
          ],
        ));
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 25,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.deepOrange[500],
    ),
  );
}
