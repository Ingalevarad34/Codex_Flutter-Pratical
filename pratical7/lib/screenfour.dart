import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreeFourState();
}

class _ScreeFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 224, 217, 217),
          ),
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 179, 198, 197),
          ),
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 121, 139, 121),
          ),
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 110, 112, 120),
          ),
        ],
      ),
    );
  }
}
