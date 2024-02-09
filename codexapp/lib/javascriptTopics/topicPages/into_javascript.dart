import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';

class IntroToJavascript extends StatefulWidget {
  const IntroToJavascript({super.key});

  @override
  State<IntroToJavascript> createState() => _IntroToJavascriptState();
}

class _IntroToJavascriptState extends State<IntroToJavascript> {
  String code1 = '''
  document.getElementById("demo").innerHTML = "Hello World";
 ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction to dart"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: HighlightView(
                  code1,
                  languageId: dart.id,
                  theme: githubDarkDimmedTheme,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
