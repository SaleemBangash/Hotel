// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';

class reception extends StatelessWidget {
  const reception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text("Reception Contact".toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Text("Please Contact us on the number 123456 for help"),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            child: Text("Refreshement".toUpperCase()),
            style: TextButton.styleFrom(
                shape: StadiumBorder(),
                // side: BorderSide(width: 6, color: Colors.red),
                minimumSize: Size(150, 40),
                backgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            onPressed: () {
              Navigator.popAndPushNamed(context, MyRoutes.bookRoute);
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text("Golf Playing".toUpperCase()),
            style: TextButton.styleFrom(
                shape: StadiumBorder(),
                minimumSize: Size(150, 40),
                backgroundColor: Colors.black,
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            onPressed: () {
              Navigator.popAndPushNamed(context, MyRoutes.bookRoute);
            },
          )
        ],
      ),
    );
  }
}
