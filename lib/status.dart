// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 60),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "status",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Ordered Placed",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Container(
              height: 180,
              width: 260,
              color: Colors.white70,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Egg Roast",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        child: Text("Cancel"),
                        style: TextButton.styleFrom(shape: StadiumBorder()),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      "price : 11    Quantity : 11",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Egg Roast",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        child: Text("Cancel"),
                        style: TextButton.styleFrom(shape: StadiumBorder()),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      "price : 11    Quantity : 11",
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
