import 'package:flutter/material.dart';

class DartUi extends StatefulWidget {
  const DartUi({super.key});

  @override
  State<DartUi> createState() => _DartUiState();
}

class _DartUiState extends State<DartUi> {
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
        title: const Text("Dart"),
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