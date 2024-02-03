import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int count = 0;

  void fun() {
    setState(() {
      count++;
    });
  }

  Widget MyContainer() {
    if (count == 1) {
      return Container(
        width: 200,
        height: 200,
        color: Colors.red,
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull"),
      ),
      floatingActionButton: IconButton(onPressed: fun, icon: Icon(Icons.add)),
      body: MyContainer(),
    );
  }
}
