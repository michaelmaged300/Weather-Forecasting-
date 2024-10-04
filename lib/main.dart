import 'package:flutter/material.dart';

import 'MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        fontFamily: "AfacadFlux"
      ),
    );
  }
}

// color: Color(0xff0c0c0c),   black
// color: Color(0xff212224),   grey
// color: Color(0xffed8b01),   orange
// color: Color(0xff414475),   dark blue

