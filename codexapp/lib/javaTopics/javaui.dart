import 'package:codexapp/javaTopics/topicPages/introduction_to_java.dart';
import 'package:codexapp/javaTopics/topicPages/namingconvension.dart';
import 'package:flutter/material.dart';

class JavaUi extends StatefulWidget {
  const JavaUi({super.key});

  @override
  State<JavaUi> createState() => _JavaUiState();
}

class _JavaUiState extends State<JavaUi> {
  Widget TextReuse(String text, Widget Linkclass) {
    return Container(
      width: 285,
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
              TextReuse("First step towards java", IntroToJava()),
              TextReuse("Naming convensions", IntroToJava()),
              TextReuse("Commenting", IntroToJava()),
              TextReuse("Datatypes", IntroToJava()),
              TextReuse("Operators", IntroToJava()),
              TextReuse("Control statements", IntroToJava()),
              TextReuse("Input output", IntroToJava()),
              TextReuse("Array", IntroToJava()),
              TextReuse("Commandline arguments", IntroToJava()),
              TextReuse("String", IntroToJava()),
              TextReuse("Introduction to oop", IntroToJava()),
              TextReuse("Constructor", IntroToJava()),
              TextReuse("Polymorfism", IntroToJava()),
            ],
          ),
        ),
      ),
    );
  }
}
