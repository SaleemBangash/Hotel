// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

// ignore: camel_case_types
class Login_Page extends StatelessWidget with InputValidationMixin {
  final _formkey = GlobalKey<FormState>();
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: ListView(children: [
              Container(
                  height: 150,
                  child: Center(
                      child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 50.0),
                  ))),
              SizedBox(height: 100.0),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[600]!.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixText: "@gmail.com",
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),

                        labelText: "Enter Email",
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Enter Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        // labelText: "Email"
                      ),
                      validator: (email) {
                        if (isEmailValid("email"))
                          return null;
                        else
                          return 'Enter a valid email address';
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[600]!.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        labelText: "Confirm Password",
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                      ),
                      validator: (password) {
                        if (isPasswordValid("password"))
                          return null;
                        else
                          return 'Enter a valid password';
                      },
                      obscureText: true,
                      // maxLength: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: ElevatedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                      shape: StadiumBorder(),
                      //side: BorderSide(width: 6),
                      minimumSize: Size(160, 40),
                      backgroundColor: Colors.blue),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.bookRoute);
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyRoutes.regRoute);
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Don't Have An Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ])))
      ],
    );
  }
}

mixin InputValidationMixin {
  bool isPasswordValid(String password) => password.length == 6;

  bool isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(email);
    return regex.hasMatch(email);
  }
}
