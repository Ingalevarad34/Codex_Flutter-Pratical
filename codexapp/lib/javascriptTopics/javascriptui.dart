import 'package:codexapp/javascriptTopics/topicPages/into_javascript.dart';
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
              TextReuse("Introduction to javascript", IntroToJavascript()),
            ],
          ),
        ),
      ),
    );
  }
}