// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

class rideBooking extends StatelessWidget {
  const rideBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Center(
                  child: Text("Ride Booking.".toUpperCase(),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Text(
                  "Please Contact us on the number 123456 for help",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                child: Text("Car Booking".toUpperCase()),
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
                child: Text("Ship Booking".toUpperCase()),
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
        ],
      ),
    );
  }
}
