// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            height: 150,
            child: Image.asset("assets/images/signup_top.png"),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            height: 120,
            child: Image.asset("assets/images/main_bottom.png"),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "SING UP",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset("assets/icons/signup.svg"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.purple[200],
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            prefixIcon: Icon(Icons.lock)),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(65, 10, 65, 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)))),
                      child: Text(
                        "Sing Up",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have an Account ? ",
                        style: TextStyle(color: Colors.black),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.purple[400]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 4,
                    endIndent: 50,
                    indent: 50,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        width: 25,
                        height: 25,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        width: 25,
                        height: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
