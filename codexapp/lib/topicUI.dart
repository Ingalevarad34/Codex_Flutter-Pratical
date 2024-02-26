import 'package:codexapp/CodeOutput/allCodesOutput.dart';
import 'package:flutter/material.dart';

class TopicUi extends StatefulWidget {
  String? appName = '';
  List? CodesList = [];
  TopicUi({super.key, this.appName, this.CodesList});

  @override
  State<TopicUi> createState() => _TopicUiState(appName, CodesList);
}

class _TopicUiState extends State<TopicUi> {
  String? appName = '';
  List? CodesList = [];

  _TopicUiState(this.appName, this.CodesList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$appName'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: CodesList!.length,
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
                                      appBar: CodesList![index]["title"],
                                      CodesList: CodesList![index],
                                    )));
                      },
                      child: Text(
                        "${CodesList![index]["title"]}",
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
