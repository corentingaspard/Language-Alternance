// ignore_for_file: camel_case_types, file_names, duplicate_ignore, avoid_print

import 'package:flutter/material.dart';

class recipeFormScreen extends StatefulWidget {
  const recipeFormScreen({Key? key}) : super(key: key);

  @override
  State<recipeFormScreen> createState() => _recipeFormScreenState();
}

// ignore: camel_case_types
class _recipeFormScreenState extends State<recipeFormScreen> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final userController = TextEditingController();
  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    userController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nouvelle Objet")),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 8),
                child: TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 8),
                child: TextFormField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  keyboardType: TextInputType.multiline,
                  minLines: 2,
                  maxLines: 5,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 16, right: 16, bottom: 16),
                child: TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
                      labelText: 'User',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0)))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a User';
                    }
                    return null;
                  },
                )),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print(
                      'User :${userController.value.text} Title :${titleController.value.text} Description : ${descriptionController.value.text}');
                  if (formKey.currentState!.validate()) {
                    print(
                        'User :${userController.value.text} Title :${titleController.value.text} Description : ${descriptionController.value.text}');
                    Navigator.pop(context);
                  }
                },
                child: const Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
