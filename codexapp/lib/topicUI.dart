import 'package:codexapp/CodeOutput/allCodesOutput.dart';
import 'package:flutter/material.dart';
import 'package:codexapp/CodesList/allCodes.dart';

class TopicUi extends StatefulWidget {
  String? appName = '';
  List<dynamic>? Topics;
  TopicUi({super.key, this.appName, this.Topics});

  @override
  State<TopicUi> createState() => _TopicUiState(appName, Topics);
}

class _TopicUiState extends State<TopicUi> {
  String? appName = '';
  List? Topics = [];
  List? topicCodes = [];

  Widget topicCode() {
    return Container(
      child: ListView.builder(
        itemCount: Codes.length,
        itemBuilder: (context, index) {
          return Codes[index];
        },
      ),
    );
  }

  _TopicUiState(this.appName, this.Topics);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$appName'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Topics!.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    width: 285,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllCodes(
                                      appBar: "${Topics![index]}",
                                      CodesList: topicCodes![index],
                                    )));
                      },
                      child: Text(
                        "${Topics![index]}",
                        style: const TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
