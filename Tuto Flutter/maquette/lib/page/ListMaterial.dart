import 'package:flutter/material.dart';
import 'package:maquette/page/recipeFormScreen.dart';

class ListMaterial extends StatelessWidget {
  const ListMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste de Piece disponible'),
        ),
        body: const Center(
          child: Text("prochainement dispo"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (_, __, ___) => const recipeFormScreen()));
          },
          child: const Icon(Icons.add),
        ));
  }
}
