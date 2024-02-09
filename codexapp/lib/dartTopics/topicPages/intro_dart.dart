import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';

class IntroToDart extends StatefulWidget {
  const IntroToDart({super.key});

  @override
  State<IntroToDart> createState() => _IntroToDartState();
}

class _IntroToDartState extends State<IntroToDart> {
  String code1 = '''
   void main(){
      print("Hello World");
   }
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