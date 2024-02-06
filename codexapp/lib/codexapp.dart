import 'package:codexapp/javaui.dart';
import 'package:flutter/material.dart';

class CodeXapp extends StatefulWidget {
  const CodeXapp({super.key});

  @override
  State<CodeXapp> createState() => _CodeXappState();
}

class _CodeXappState extends State<CodeXapp> {
  int count = 0;

  // void reload() {
  //   setState(() {

  //   });
  // }

  Widget languages() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Language : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget ImageCard(String image) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 20, bottom: 35, left: 20),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('$image')),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(0, 15))
          ]),
    );
  }

  Widget languagesWidgets() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
                child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JavaUi()));
              },
              child: ImageCard("images/java-14-logo.png"),
            )),
            Container(
                child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JavaUi()));
              },
              child: ImageCard("images/Dart-logo.png"),
            )),
            Container(
                child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JavaUi()));
              },
              child: ImageCard("images/Python-logo.png"),
            )),
            Container(
                child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => JavaUi()));
              },
              child: ImageCard("images/js-logo.png"),
            )),
          ],
        ),
      ),
    );
  }

  Widget FrameWork() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "FrameWork : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget FrameWorkWidgets() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ImageCard("images/react-logo.png"),
            ImageCard("images/flutter-logo.png"),
            ImageCard("images/spring-logo.png"),
            ImageCard("images/hibernate-logo.png"),
          ],
        ),
      ),
    );
  }

  Widget Database() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Database : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget DatabaseWidgets() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ImageCard("images/maria.png"),
            ImageCard("images/mongodb.png"),
            ImageCard("images/mysql.png"),
            ImageCard("images/oracle.png"),
          ],
        ),
      ),
    );
  }

  Widget Tools() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 10),
      child: const Text(
        "Tools : ",
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Widget ToolsWidgets() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ImageCard("images/git-img.png"),
            ImageCard("images/github.png"),
            ImageCard("images/postman.png"),
            ImageCard("images/vs-logo.png"),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CodeX",
          style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: const Color.fromARGB(255, 0, 0, 0),
          )
        ],
      ),
      // floatingActionButton:
      //     IconButton(onPressed: reload, icon: const Icon(Icons.add)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    languages(),
                    languagesWidgets(),
                    FrameWork(),
                    FrameWorkWidgets(),
                    Database(),
                    DatabaseWidgets(),
                    Tools(),
                    ToolsWidgets(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
