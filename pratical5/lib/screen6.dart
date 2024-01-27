import 'package:flutter/material.dart';

class ScreenSix extends StatelessWidget {
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
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 200,
                width: 200,
                color: Color.fromARGB(255, 104, 216, 79)),
            SizedBox(
              height: 50,
            ),
            Container(
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
