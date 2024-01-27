import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 200,
              color: Color.fromARGB(255, 3, 244, 244),
            ),
          ],
        ),
      ),
    );
  }
}
