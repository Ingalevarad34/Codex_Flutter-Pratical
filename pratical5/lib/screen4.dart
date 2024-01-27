import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Image.network(
                "images/screen2.2.jpeg",
                fit: BoxFit.cover,
              ),
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              width: 50,
            ),
            Container(
                child: Image.network(
                  "images/screen2.3.jpeg",
                  fit: BoxFit.cover,
                ),
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 104, 216, 79)),
            SizedBox(
              width: 50,
            ),
            Container(
              child: Image.network(
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
