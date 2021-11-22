// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hotel/utils/routes.dart';
import 'package:hotel/widgets/background_image.dart';

class Reg_page extends StatefulWidget {
  const Reg_page({Key? key}) : super(key: key);

  @override
  State<Reg_page> createState() => _Reg_pageState();
}

class _Reg_pageState extends State<Reg_page> {
  bool _isObscure = true;
  bool _onObscure = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: ListView(
              children: [
                Container(
                    height: 150,
                    child: Center(
                        child: Text(
                      "Create An Account",
                      style: TextStyle(fontSize: 40.0),
                    ))),
                SizedBox(height: 100.0),
                Form(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[600]!.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          hintText: "Enter First Name",
                          hintStyle: TextStyle(color: Colors.white),
                          labelText: "First Name"),
                    ),
                  ),
                )),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Enter Last Name",
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: "Last Name"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name Cannot Be Empty";
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Enter Email",
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: "Email"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email Cannot Be Empty";
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)),
                      child: TextFormField(
                        obscureText: _isObscure,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Enter Password",
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name Cannot Be Empty";
                          }
                        },
                        //obscureText: true,
                      ),
                    ),
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[600]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(16)),
                      child: TextFormField(
                        obscureText: _onObscure,
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_onObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _onObscure = !_onObscure;
                                  });
                                }),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Colors.white),
                            labelText: "Confirm Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name Cannot Be Empty";
                          }
                        },
                        //obscureText: true,
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
                      "Create Account",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                        shape: StadiumBorder(),
                        //side: BorderSide(width: 6),
                        minimumSize: Size(160, 40),
                        backgroundColor: Colors.blue),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
