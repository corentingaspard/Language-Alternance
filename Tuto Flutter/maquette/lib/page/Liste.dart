// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:maquette/page/show.dart';
import 'package:maquette/page/recipeFormScreen.dart';

class liste extends StatefulWidget {
  const liste({Key? key}) : super(key: key);

  @override
  State<liste> createState() => _listeState();
}

class _listeState extends State<liste> {
  int indice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste de Piece disponible'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int indice = 1; indice < 21; indice++)
              ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => show(
                                indice: indice,
                              )));
                },
                leading: const Icon(Icons.add_box_rounded),
                title: Text('Piece de Plastique $indice'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const recipeFormScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
