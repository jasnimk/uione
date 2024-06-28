import 'package:flutter/material.dart';
import 'package:uione/fifth_screen.dart';
import 'package:uione/fourth_screen.dart';
import 'package:uione/home_screen.dart';

import 'package:uione/menu_screen.dart';
import 'package:uione/second_screen.dart';
import 'package:uione/sixth_screen.dart';
import 'package:uione/third_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      home: const MenuScreen(),
      routes: {
        '/first': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
        '/sixth': (context) => SixthScreen(),
      },
    );
  }
}
