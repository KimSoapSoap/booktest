import 'package:bookbox/user/view/login_screen.dart';
import 'package:bookbox/commons/view/root_tab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
        "/home": (context) => RootTab(),
      },
    );
  }
}

