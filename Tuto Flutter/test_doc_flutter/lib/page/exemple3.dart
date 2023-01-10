// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class exemple3 extends StatelessWidget {
  const exemple3({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exemple 3'),
        ),
        body: GridView.extent(
            maxCrossAxisExtent: 150,
            padding: const EdgeInsets.all(4),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            children: _buildGridTileList(19)));
  }
}

List<Container> _buildGridTileList(int count) => List.generate(
    // ignore: avoid_unnecessary_containers
    count,
    (i) => Container(child: Image.asset('images/pic$i.jpg')));
