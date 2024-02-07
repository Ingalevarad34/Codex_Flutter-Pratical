import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';

class IntroToJava extends StatefulWidget {
  const IntroToJava({super.key});

  @override
  State<IntroToJava> createState() => _IntroToJavaState();
}

class _IntroToJavaState extends State<IntroToJava> {
  String code1 = '''
    class Demo{
       public static void main(String[]args){
          System.out.println("Hello World");
       }
    }
 ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java naming convensions"),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: HighlightView(
            code1,
            languageId: dart.id,
            theme: githubDarkDimmedTheme,
          ),
        ),
      ),
    );
  }
}
