import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';
import 'package:codexapp/CodesList/allCodes.dart';

class IntroToJava extends StatefulWidget {
  const IntroToJava({super.key});

  @override
  State<IntroToJava> createState() => _IntroToJavaState();
}

class _IntroToJavaState extends State<IntroToJava> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java naming convensions"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: JavaCodes.Codes.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    child: HighlightView(
                      "${JavaCodes.Codes[index]}",
                      languageId: dart.id,
                      theme: githubDarkDimmedTheme,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
