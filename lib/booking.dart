// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

class booking extends StatelessWidget {
  const booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(children: [
            ElevatedButton(
              child: Text("Room Booking"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                  minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRoutes.roomRoute);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Ride Booking"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                  minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRoutes.rideRoute);
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Refreshement"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                  minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRoutes.refRoute);
              },
            ),
            SizedBox(height: 100),
            ElevatedButton(
              child: Text("Sign Out"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                  minimumSize: Size(150, 40)),
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRoutes.loginRoute);
              },
            ),
          ]),
        ),
      ),
    ]);
  }
}
