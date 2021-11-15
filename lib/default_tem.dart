// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DefaultItem extends StatefulWidget {
  const DefaultItem({Key? key}) : super(key: key);

  @override
  _DefaultItemState createState() => _DefaultItemState();
}

class _DefaultItemState extends State<DefaultItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 20),
            child: Container(
              height: 30,
              width: 270,
              color: Colors.blue,
              child: Center(
                child: Text("Default Items",
                    style: TextStyle(
                      fontSize: 25,
                    )),
              ),
            ),
          ),
          Text(
            "Paroola And Curry",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 220,
              color: Colors.blue,
              child: Center(
                child: Text(
                    "Names               "
                    "         Quantity",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text("first"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("1"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
