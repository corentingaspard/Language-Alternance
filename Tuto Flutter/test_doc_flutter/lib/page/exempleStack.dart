// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class exempleStack extends StatelessWidget {
  const exempleStack({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Exemple 2'),
        ),
        body: Stack(
          alignment: const Alignment(0.6, 0.6),
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/pic.jpg'),
              radius: 100,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
              ),
              child: const Text(
                'Corentin G',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
