// ignore: unused_import

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Lunch extends StatelessWidget {
  const Lunch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "LUNCH",
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
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: GridTile(
                header: Center(
                  child: Text(
                    "kabab".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/kabab.jpg",
                      fit: BoxFit.fill,
                    ),
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
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //padding: const Edge
              //Insets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "seekh kabab".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/skabab.jpg",
                       fit: BoxFit.fill,
                    ),
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
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "karhai".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/karhai.jpg",
                       fit: BoxFit.fill,
                    ),
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
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      "m karhai".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/mkarhai.jpg",
                      // fit: BoxFit.fitHeight,
                    ),
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
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "bbq".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/bbq.jpg",
                      fit: BoxFit.fill,
                    ),
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
            Card(
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              // padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "biryani".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Image.asset(
                      "images/rice.png",
                       fit: BoxFit.fill,
                    ),
                  ),
                ),
                footer: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("100",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              //color: Colors.teal[400],
            ),
          ],
        ),
      ),
    );
  }
}
