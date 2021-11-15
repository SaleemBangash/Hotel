// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/widgets/background_image.dart';

class Evening extends StatefulWidget {
  const Evening({Key? key}) : super(key: key);

  @override
  _DrinksState createState() => _DrinksState();
}

class _DrinksState extends State<Evening> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        //BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "Evening Food",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
                      "samosa".toUpperCase(),
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
                          )),
                      child: Image.asset("images/samosa.jpg")),
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
                      "chicken roll".toUpperCase(),
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
                          )),
                      child: Image.asset("images/roll.jpg")),
                  footer: Center(
                    child: Text("100",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Card(
                semanticContainer: true,
                color: Colors.brown,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                //padding: const EdgeInsets.all(8),
                child: GridTile(
                  header: Center(
                    child: Text(
                      "green tea".toUpperCase(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            width: 5,
                          )),
                      child: Image.asset("images/greenTea.jpg")),
                  footer: Center(
                    child: Text("100",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
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
                      "tea".toUpperCase(),
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
                          )),
                      child: Image.asset("images/tea.jpg")),
                  footer: Center(
                    child: Text("100",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                ),
                //color: Colors.teal[400],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
