// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BreakFast extends StatefulWidget {
  const BreakFast({Key? key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<BreakFast> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "BREAKFAST",
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
                    "Egg".toUpperCase(),
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
                        "images/egg.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
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
                    "boil Egg".toUpperCase(),
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
                        "images/boilEgg.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
                footer: Center(
                  child: Text("100",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Card(
              semanticContainer: true,
              color: Colors.brown[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              //padding: const EdgeInsets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "sandwich".toUpperCase(),
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
                        width: 5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Image.asset(
                        "images/sandwich.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
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
                  child: Text(
                    "bread".toUpperCase(),
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
                        width: 5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Image.asset(
                        "images/bread.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
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
  }
}
