import 'package:flutter/material.dart';

import 'login.dart';
import 'singup.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/first': (context) => const LoginPage(),
        '/second': (context) => const SingupPage(),
      },
    );
  }
}
