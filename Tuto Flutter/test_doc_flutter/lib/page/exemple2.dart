// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class exemple2 extends StatelessWidget {
  const exemple2({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Exemple 2'),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
                child: Image(
                    image:
                        /*AssetImage('images/pic1.jpg') */
                        NetworkImage(
              "https://images.unsplash.com/photo-1440847899694-90043f91c7f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
            ))),
            Expanded(
                child: Image(
                    image: NetworkImage(
              "https://images.unsplash.com/photo-1440847899694-90043f91c7f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
            ))),
            Expanded(
                child: Image(
                    image: NetworkImage(
              "https://images.unsplash.com/photo-1440847899694-90043f91c7f9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80",
            ))),
          ],
        ))));
  }
}
