import 'package:codexapp/introduction_to_java.dart';
import 'package:codexapp/namingconvension.dart';
import 'package:flutter/material.dart';

class JavaUi extends StatefulWidget {
  const JavaUi({super.key});

  @override
  State<JavaUi> createState() => _JavaUiState();
}

class _JavaUiState extends State<JavaUi> {
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
        title: const Text("Java"),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextReuse("Introduction to java", IntroToJava()),
              // TextReuse("First step towards java"),
              TextReuse("Naming convensions", JavaNamingConvension()),
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
