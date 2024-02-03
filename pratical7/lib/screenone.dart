import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
   Widget fun() {
    print("Hello this is fun method");
    return Scaffold(
      appBar: AppBar(
        title: Text("stateless"),
      ),
    );
  }
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return fun();
  }
}