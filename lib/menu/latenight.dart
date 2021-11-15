// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LateNight extends StatelessWidget {
  const LateNight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Late Night".toUpperCase(),
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
          children: [
            Card(
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "pizza".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                    ),
                  ),
                  child: Image.asset(
                    "images/pizza.jpg",
                    //fit: BoxFit.fitHeight,
                  ),
                ),
                footer: Center(
                    child: Text(
                  "100",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Card(
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //padding: const Edge
              //Insets.all(8),
              child: GridTile(
                header: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "krunch burger".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                    ),
                  ),
                  child: Image.asset(
                    "images/kburger.jpg",
                    //fit: BoxFit.fitHeight,
                  ),
                ),
                footer: Center(
                  child: Text("100",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Card(
              //semanticContainer: true,
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "ice cream".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                    ),
                  ),
                  child: Image.asset(
                    "images/icecream.jpg",
                    // fit: BoxFit.fitHeight,
                  ),
                ),
                footer: Center(
                  child: Text("100",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Card(
              color: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "zinger burger".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 5,
                    ),
                  ),
                  child: Image.asset(
                    "images/zburger.jpg",
                    //fit: BoxFit.fitHeight,
                  ),
                ),
                footer: Center(
                  child: Text("100",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              //color: Colors.teal[400],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
