// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

class refreshement extends StatelessWidget {
  const refreshement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(children: [
              ElevatedButton(
                child: Text("BreakFast".toUpperCase()),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.breakfastRoute);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Lunch".toUpperCase()),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.lunchRoute);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Dinner"),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.dinnerRoute);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Late Night"),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.latenightRoute);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Evening Food"),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.eveningRoute);
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("Drinks".toUpperCase()),
                style: TextButton.styleFrom(
                    shape: StadiumBorder(),
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    )),
                onPressed: () {
                  Navigator.popAndPushNamed(context, MyRoutes.drinkRoute);
                },
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
