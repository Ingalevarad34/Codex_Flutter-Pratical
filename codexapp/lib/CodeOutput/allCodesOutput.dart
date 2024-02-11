import 'package:flutter/material.dart';
import 'package:flutter_highlighting/flutter_highlighting.dart';
import 'package:flutter_highlighting/themes/github-dark-dimmed.dart';
import 'package:highlighting/languages/dart.dart';
import 'package:codexapp/CodesList/allCodes.dart';

class AllCodes extends StatefulWidget {
  const AllCodes({super.key});

  @override
  State<AllCodes> createState() => _AllCodesState();
}

class _AllCodesState extends State<AllCodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Java naming convensions"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Codes.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    child: HighlightView(
                      "${Codes[index]}",
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
