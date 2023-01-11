// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class exempleCard extends StatelessWidget {
  const exempleCard({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple Card'),
      ),
      body: Column(
        children: [
          Expanded(child: _buildCard()
              /* ListView(
            children: const <Widget>[
              ListTile(
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue,
                ),
                title: const Text(
                  '1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                subtitle: const Text('My City, CA 99984'),
              )
            ],
          )),*/
              ),
          Expanded(child: _buildCard2()),
        ],
      ),
    );
  }
}

Widget _buildCard() {
  return Card(
      child: ListView(
    children: [
      ListTile(
        title: const Text(
          '1625 Main Street',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('My City, CA 99984'),
        leading: Icon(
          Icons.restaurant_menu,
          color: Colors.blue[500],
        ),
      ),
      const Divider(),
      ListTile(
        title: const Text(
          '(408) 555-1212',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        leading: Icon(
          Icons.contact_phone,
          color: Colors.blue[500],
        ),
      ),
      const Divider(),
      ListTile(
        title: const Text('costa@example.com'),
        leading: Icon(
          Icons.contact_mail,
          color: Colors.blue[500],
        ),
      ),
    ],
  ));
}

Widget _buildCard2() {
  return Card(
      child: ListView(
    children: [
      ListTile(
        title: const Text(
          'Item 1',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('Secondary text'),
        leading: Icon(
          Icons.looks_one_rounded,
          color: Colors.blue[500],
        ),
      ),
      const Divider(),
      ListTile(
        title: const Text(
          'Item 2',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('Secondary text'),
        leading: Icon(
          Icons.looks_two_rounded,
          color: Colors.blue[500],
        ),
      ),
      const Divider(),
      ListTile(
        title: const Text(
          'Item 3',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('Secondary text'),
        leading: Icon(
          Icons.looks_3_rounded,
          color: Colors.blue[500],
        ),
      ),
    ],
  ));
}
