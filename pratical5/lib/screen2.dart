import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Image.asset(
                "images/screen2.2.jpeg",
                fit: BoxFit.cover,
              ),
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset(
                "images/screen2.3.jpeg",
                fit: BoxFit.cover,
              ),
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 104, 216, 79)),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset(
                "images/screen2.jpeg",
                fit: BoxFit.cover,
              ),
              height: 200,
              width: 200,
              color: Color.fromARGB(255, 11, 40, 225),
            ),
          ],
        ),
      ),
    ));
  }
}
