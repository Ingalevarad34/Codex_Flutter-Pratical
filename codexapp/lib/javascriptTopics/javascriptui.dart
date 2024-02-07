import 'package:flutter/material.dart';

class JavascriptUi extends StatefulWidget {
  const JavascriptUi({super.key});

  @override
  State<JavascriptUi> createState() => _JavascriptUiState();
}

class _JavascriptUiState extends State<JavascriptUi> {
  Widget TextReuse(String text, Widget Linkclass) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Linkclass));
        },
        child: Text(
          '$text',
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JavaScript"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TextReuse("Introduction to java", IntroToJava()),
              // TextReuse("First step towards java"),
              // TextReuse("Naming convensions", JavaNamingConvension()),
              // TextReuse("Commenting"),
              // TextReuse("Datatypes"),
              // TextReuse("Operators"),
              // TextReuse("Control statements"),
              // TextReuse("Input output"),
              // TextReuse("Array"),
              // TextReuse("Commandline arguments"),
              // TextReuse("String"),
              // TextReuse("Introduction to oop"),
              // TextReuse("Constructor"),
              // TextReuse("Polymorfism"),
            ],
          ),
        ),
      ),
    );
  }
}