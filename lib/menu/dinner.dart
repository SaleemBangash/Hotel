// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dinner extends StatefulWidget {
  const Dinner({Key? key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Dinner> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            "Dinner",
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
                  child: Text(
                    "chicken butter".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Image.asset("images/cbutter.jpg"),
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
                  child: Text(
                    "macroni".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Image.asset("images/macroni.jpg"),
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
              //padding: const Edge
              //Insets.all(8),
              child: GridTile(
                header: Center(
                  child: Text(
                    "pasta".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Image.asset("images/pasta.jpg"),
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
                  child: Text(
                    "chicken tikka".toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                child: Image.asset("images/tikka.jpg"),
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
