// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/booking.dart';
import 'package:hotel/default_tem.dart';
import 'package:hotel/login_page.dart';
import 'package:hotel/menu/breakfast.dart';
import 'package:hotel/menu/dinner.dart';
import 'package:hotel/menu/drinks.dart';
import 'package:hotel/menu/evening_food.dart';
import 'package:hotel/menu/latenight.dart';
import 'package:hotel/menu/lunch.dart';
import 'package:hotel/reception.dart';
import 'package:hotel/refreshement.dart';
import 'package:hotel/reg_page.dart';
import 'package:hotel/ride.dart';
import 'package:hotel/room_booking.dart';
import 'package:hotel/status.dart';
import 'package:hotel/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Login_Page(),
        MyRoutes.loginRoute: (context) => Login_Page(),
        MyRoutes.regRoute: (context) => Reg_page(),
        MyRoutes.bookRoute: (context) => booking(),
        MyRoutes.refRoute: (context) => refreshement(),
        MyRoutes.roomRoute: (context) => roomBooking(),
        MyRoutes.rideRoute: (context) => rideBooking(),
        MyRoutes.receptRoute: (context) => reception(),
        MyRoutes.lunchRoute: (context) => Lunch(),
        MyRoutes.drinkRoute: (context) => Drinks(),
        MyRoutes.latenightRoute: (context) => LateNight(),
        MyRoutes.dinnerRoute: (context) => Dinner(),
        MyRoutes.eveningRoute: (context) => Evening(),
        MyRoutes.breakfastRoute: (context) => BreakFast(),
        MyRoutes.itemRoute: (context) => DefaultItem(),
        MyRoutes.statusRoute: (context) => Status(),
      },
    );
  }
}
