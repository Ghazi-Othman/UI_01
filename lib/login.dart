// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
                height: 150,
                top: 0,
                left: 0,
                child: Image.asset("assets/images/main_top.png")),
            Positioned(
                height: 150,
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/login_bottom.png")),
            Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "LOG IN",
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SvgPicture.asset("assets/icons/login.svg"),
                      SizedBox(
                        height: 30,
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
                        height: 20,
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
                        height: 20,
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
                                      borderRadius:
                                          BorderRadius.circular(25)))),
                          child: Text(
                            "LOG IN",
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
                          Text("Don't Have an Account ? ",
                              style: TextStyle(color: Colors.black)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Sing UP",
                              style: TextStyle(color: Colors.purple[300]),
                            ),
                          )
                        ],
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
