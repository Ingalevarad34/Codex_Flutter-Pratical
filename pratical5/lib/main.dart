import 'package:flutter/material.dart';
// import 'screen1.dart';
// import 'screen2.dart';
// import 'screen3.dart';
// import 'screen4.dart';
// import 'screen5.dart';
import 'screen6.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenSix(),
    );
  }
}
