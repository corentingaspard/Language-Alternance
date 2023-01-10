// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'show.dart';

class Liste2 extends StatefulWidget {
  const Liste2({super.key});

  @override
  State<Liste2> createState() => _Liste2State();
}

class _Liste2State extends State<Liste2> {
  List<int> items = List<int>.generate(100, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Liste Dismissible'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.green,
              ),
              key: ValueKey<int>(items[index]),
              onDismissed: (DismissDirection direction) {
                // setState(() {
                //   items.removeAt(index);
                // });
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => show(
                              indice: items[index],
                            )));
              },
              child: ListTile(
                title: Text(
                  'Item ${items[index]}',
                ),
              ),
            );
          },
        ));
  }
}
