import 'package:codexapp/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';

class AllCodes extends StatefulWidget {
  String? appBar;
  Map CodesList;
  AllCodes({super.key, this.appBar, required this.CodesList});

  @override
  State<AllCodes> createState() => _AllCodesState(appBar, CodesList);
}

class _AllCodesState extends State<AllCodes> {
  String? appBar;
  Map CodesList;

  _AllCodesState(this.appBar, this.CodesList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$appBar'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: CodesList["codes"].length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: Text('Program ${index + 1}'),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    child: HighlightView(
                      "${CodesList["codes"][index]}",
                      padding: const EdgeInsets.all(15),
                      languageId: dart.id,
                      theme: githubDarkDimmedTheme,
                    ),
                  )
                ],
              );
            },
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        QuizHome(questions: CodesList["quiz"])));
          },
          child: Text("Take Quiz"),
        ));
  }
}
