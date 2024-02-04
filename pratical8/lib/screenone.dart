import 'package:flutter/material.dart';
import 'package:pratical8/screenthree.dart';
import 'package:pratical8/screentwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenThree()));
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            )),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Text("second screen"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
