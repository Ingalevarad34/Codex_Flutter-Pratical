import 'package:flutter/material.dart';

class IntroToJava extends StatefulWidget {
  const IntroToJava({super.key});

  @override
  State<IntroToJava> createState() => _IntroToJavaState();
}

class _IntroToJavaState extends State<IntroToJava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("introduction to java"),
      ),
    );
  }
}
