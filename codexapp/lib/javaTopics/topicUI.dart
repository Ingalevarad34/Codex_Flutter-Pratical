import 'package:codexapp/javaTopics/topicPages/introduction_to_java.dart';
import 'package:flutter/material.dart';
import 'package:codexapp/TopicsList/allTopics.dart';

class TopicUi extends StatefulWidget {
  String? appName = '';
  List<dynamic>? JavaTopics;
  TopicUi({super.key, this.appName, this.JavaTopics});

  @override
  State<TopicUi> createState() => _TopicUiState(appName,JavaTopics);
}

class _TopicUiState extends State<TopicUi> {
  String? appName = '';
    List? JavaTopics = [];

  _TopicUiState(this.appName,this.JavaTopics);
  Widget TextReuse(String text) {
    return Container(
      width: 285,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => IntroToJava()));
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
        title: Text('$appName'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount:JavaTopics!.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  TextReuse("${JavaTopics![index]}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
