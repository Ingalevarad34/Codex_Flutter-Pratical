import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  int count = 0;

  void fun() {
    setState(() {
      count++;
    });
  }

  Widget MyContainer1() {
    if (count >= 1) {
      return Container(
        width: 100,
        height: 100,
        color: Color.fromARGB(255, 187, 22, 13),
        margin: EdgeInsets.only(top: 15),
      );
    }
    return Container();
  }

  Widget MyContainer2() {
    if (count >= 2) {
      return Container(
        width: 100,
        height: 100,
        color: const Color.fromARGB(255, 54, 105, 244),
        margin: EdgeInsets.only(top: 15),
      );
    }
    return Container();
  }

  Widget MyContainer3() {
    if (count >= 3) {
      return Container(
        width: 100,
        height: 100,
        color: const Color.fromARGB(255, 127, 244, 54),
        margin: EdgeInsets.only(top: 15),
      );
    }
    return Container();
  }

  Widget MyContainer4() {
    if (count >= 4) {
      return Container(
        width: 100,
        height: 100,
        color: Color.fromARGB(255, 146, 21, 155),
        margin: EdgeInsets.only(top: 15),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
      floatingActionButton: IconButton(onPressed: fun, icon: Icon(Icons.add)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyContainer1(),
            MyContainer2(),
            MyContainer3(),
            MyContainer4(),
          ],
        ),
      ),
    );
  }
}
