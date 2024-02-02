import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int? count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    child: Text('$count'),
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          '$count++';
                        });
                      },
                      icon: ButtonBar(),
                      label: Text("Increment"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
