// ignore_for_file: camel_case_types

import 'dart:math';
import 'package:flutter/material.dart';

class exemple1 extends StatelessWidget {
  const exemple1({super.key});

  get backgroundcolor => null;

  @override
  Widget build(BuildContext context) {
    int rng = Random().nextInt(1000);
    int temps1 = Random().nextInt(59) + 1;
    int temps2 = Random().nextInt(23) + 1;
    int temps3 = Random().nextInt(59) + 1;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Exemple 1'),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 86, 151, 204),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: const Text("Test"),
                ),
                const Padding(padding: EdgeInsets.only(top: 20, right: 15)),
                /* const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sodales ultrices augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas ultricies, ligula id tempus facilisis, ligula orci faucibus eros, a luctus nibh tortor quis orci. Mauris in lorem at sapien suscipit efficitur quis id turpis. Suspendisse potenti. Duis placerat mi ullamcorper sapien bibendum luctus. Donec at sapien cursus, tincidunt lorem sed, convallis eros. Cras rhoncus, odio vitae tincidunt ultrices, mi metus sollicitudin sem, id porttitor mauris justo ut mauris. Nulla suscipit, purus a malesuada faucibus, neque purus suscipit tortor, eget condimentum nunc tellus quis nulla. Duis elementum accumsan lectus, id dapibus tortor volutpat a. Praesent eget lorem eros. Curabitur a pulvinar turpis. Suspendisse potenti."), */

                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 86, 151, 204),
                  ),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sodales ultrices augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Maecenas ultricies, ligula id tempus facilisis, ligula orci faucibus eros, a luctus nibh tortor quis orci. Mauris in lorem at sapien suscipit efficitur quis id turpis. Suspendisse potenti. Duis placerat mi ullamcorper sapien bibendum luctus. Donec at sapien cursus, tincidunt lorem sed, convallis eros. Cras rhoncus, odio vitae tincidunt ultrices, mi metus sollicitudin sem, id porttitor mauris justo ut mauris. Nulla suscipit, purus a malesuada faucibus, neque purus suscipit tortor, eget condimentum nunc tellus quis nulla. Duis elementum accumsan lectus, id dapibus tortor volutpat a. Praesent eget lorem eros. Curabitur a pulvinar turpis. Suspendisse potenti.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20, right: 15)),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 86, 151, 204),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          const Padding(
                              padding: EdgeInsets.only(top: 20, right: 20)),
                          for (int i = 0; i < 5; i++) const Icon(Icons.star),
                        ],
                      ),
                      Text("$rng Reviews")
                    ],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20, right: 20)),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color.fromARGB(255, 86, 151, 204),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 20, right: 20)),
                      Column(
                        children: [
                          Icon(Icons.kitchen, color: Colors.green[500]),
                          Row(
                            children: const [Text("PREP :")],
                          ),
                          Row(
                            children: [Text("$temps1 min")],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.timer, color: Colors.green[500]),
                          Row(
                            children: const [Text("COOK :")],
                          ),
                          Row(
                            children: [Text("$temps2 min")],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.green[500]),
                          Row(
                            children: const [Text("FEEDS :")],
                          ),
                          Row(
                            children: [Text("$temps3 s")],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                    image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6u0T1LpjGdGvGeOIduJC2Uz2P9FjMf48auQ&usqp=CAU",
                )),
              ],
            ),
            Container(
              height: 50,
            )
          ],
        ))));
  }
}
