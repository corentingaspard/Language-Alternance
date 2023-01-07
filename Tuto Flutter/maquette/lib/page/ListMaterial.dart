import 'package:flutter/material.dart';
import 'package:maquette/page/recipeFormScreen.dart';

class ListMaterial extends StatelessWidget {
  const ListMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste de Piece disponible'),
      ),
      body: Center(
        child: Text("prochainement dispo"),
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
