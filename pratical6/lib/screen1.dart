import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count'),
            Padding(padding: EdgeInsets.only(bottom: 50)),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Text("Increment")),
                        margin: EdgeInsets.only(right: 30),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            count = 0;
                          });
                        },
                        child: Text("Reset")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
