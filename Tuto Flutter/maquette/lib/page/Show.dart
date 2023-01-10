// ignore_for_file: file_names, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

class show extends StatelessWidget {
  show({super.key, required this.indice});
  final int indice;
  final int longueur = Random().nextInt(100);
  final int largeur = Random().nextInt(100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detaille Piece"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Piece numero $indice"),
          Text("Taille : largeur $largeur , longueur $longueur"),
        ])));
  }
}
