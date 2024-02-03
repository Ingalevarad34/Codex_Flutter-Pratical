import 'package:flutter/material.dart';
import 'package:pratical7/screenfour.dart';
// import 'package:pratical7/screenthree.dart';
// import 'package:pratical7/screentwo.dart';
// import 'package:pratical7/screenone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenFour(),
    );
  }
}
