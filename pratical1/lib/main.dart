import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 162, 205, 43),
              height: 100,
              width: 100,
            ),
            Container(
              color: Color.fromARGB(255, 83, 59, 217),
              height: 100,
              width: 100,
            )
          ],
        )),
      ),
    );
  }
}
