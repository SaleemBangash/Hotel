// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

// ignore: camel_case_types
class roomBooking extends StatefulWidget {
  const roomBooking({Key? key}) : super(key: key);

  @override
  State<roomBooking> createState() => _roomBookingState();
}

class _roomBookingState extends State<roomBooking> {
  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool iChecked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        // BackgroundImage(),
        ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: Text(
                "Room Booking",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            // decoration: BoxDecoration(
            // color: Colors.grey[600]!.withOpacity(0.5),
            // borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  //icon: Icon(Icons.person),
                  hintText: "First Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                //icon: Icon(Icons.person),
                hintText: "Last Name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on),
                // icon: Icon(Icons.location_on),
                hintText: "Address 1",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_on),
                // icon: Icon(Icons.location_on),
                hintText: "Address 2",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                prefixText: "+92",
                prefixIcon: Icon(Icons.phone),
                // icon: Icon(Icons.phone),
                hintText: "Phone",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                // icon: Icon(Icons.email),
                hintText: "Email",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_city),
                //icon: Icon(Icons.location_city),
                hintText: "State",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //prefixText: "+91",
                prefixIcon: Icon(Icons.code),
                // icon: Icon(Icons.code),
                hintText: "Zip Code",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Number Of People",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: new TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                new Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: new TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            contentPadding: EdgeInsets.all(10))),
                  ),
                ),
                // SizedBox(
                //   width: 20.0,
                // ),
                // new Flexible(
                //   child: new TextField(
                //       decoration:
                //           InputDecoration(contentPadding: EdgeInsets.all(10))),
                // ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Dog".toUpperCase(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                    onChecked = false;
                  });
                },
              ),
              Text(
                'yes',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: onChecked,
                onChanged: (bool? value) {
                  setState(() {
                    onChecked = value!;
                    isChecked = false;
                  });
                },
              ),
              Text(
                'No',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //prefixText: "+91",
                prefixIcon: Icon(Icons.location_city),
                // icon: Icon(Icons.location_city),
                hintText: "Nationality",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                // prefixText: "+91",
                prefixIcon: Icon(Icons.drive_eta),
                //icon: Icon(Icons.drive_eta),
                hintText: "Drivilng Liscence",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.file_copy),
                //icon: Icon(Icons.file_copy),
                hintText: "Passport",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Confirm The Person Wh is going to reserve the Room"
                    .toUpperCase(),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: ifChecked,
                onChanged: (bool? value) {
                  setState(() {
                    ifChecked = value!;
                    iChecked = false;
                  });
                },
              ),
              Text(
                'Out Sider',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: iChecked,
                onChanged: (bool? value) {
                  setState(() {
                    iChecked = value!;
                    ifChecked = false;
                  });
                },
              ),
              Text(
                'Local',
                style: TextStyle(fontSize: 17.0),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "payment method".toUpperCase(),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.payment),
                //icon: Icon(Icons.payment),
                hintText: "Paypal,Debit Card/Credit Card",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80, bottom: 20),
            child: ElevatedButton(
              child: Text("Submit".toUpperCase()),
              style: TextButton.styleFrom(
                  shape: StadiumBorder(),
                  minimumSize: Size(50, 40),
                  backgroundColor: Colors.blue,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              onPressed: () {
                Navigator.popAndPushNamed(context, MyRoutes.loginRoute);
              },
            ),
          )
        ]),
      ]),
    );
  }
}
