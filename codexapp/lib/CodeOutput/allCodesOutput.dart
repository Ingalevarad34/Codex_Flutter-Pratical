import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';
import 'package:codexapp/CodesList/allCodes.dart';

class AllCodes extends StatefulWidget {
  String? appBar;
  List<dynamic>? CodesList = [];
  AllCodes({super.key, this.appBar, this.CodesList});

  @override
  State<AllCodes> createState() => _AllCodesState(appBar, CodesList);
}

class _AllCodesState extends State<AllCodes> {
  String? appBar;
  List<dynamic>? CodesList = [];

  _AllCodesState(this.appBar, this.CodesList);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$appBar'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: CodesList!.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    child: HighlightView(
                      "${CodesList![index]}",
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
