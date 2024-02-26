import 'package:codexapp/topicUI.dart';
import 'package:flutter/material.dart';
import 'package:codexapp/CodesList/javacodes.dart';
import 'package:codexapp/CodesList/dartcodes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CodeXapp extends StatefulWidget {
  const CodeXapp({super.key});

  @override
  State<CodeXapp> createState() => _CodeXappState();
}

class _CodeXappState extends State<CodeXapp> {
  int count = 0;

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
      width: 150,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
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
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/java-14-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "DartTopics", CodesList: dartcodes)));
          },
          child: ImageCard("images/Dart-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "PythonTopics", CodesList: dartcodes)));
          },
          child: ImageCard("images/Python-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaScriptTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/js-logo.png"),
        )
      ],
      options: CarouselOptions(
        autoPlay: true,
        initialPage: 0,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        height: 200,
        enlargeFactor: 0.225,
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
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/react-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/flutter-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/spring-logo.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/hibernate-logo.png"),
        )
      ],
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 7,
          initialPage: 0,
          reverse: true,
          viewportFraction: 0.5,
          height: 200,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.225),
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
    return CarouselSlider(
      items: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/maria.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/mongodb.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/mysql.png"),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        TopicUi(appName: "JavaTopics", CodesList: javacodes)));
          },
          child: ImageCard("images/oracle.png"),
        )
      ],
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 16 / 7,
          initialPage: 0,
          reverse: false,
          viewportFraction: 0.5,
          height: 200,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.225),
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
    return Builder(builder: (context) {
      return CarouselSlider(
        items: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TopicUi(
                            appName: "JavaTopics", CodesList: javacodes)));
              },
              child: ImageCard("images/github.png")),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/github.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/postman.png"),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TopicUi(
                          appName: "JavaTopics", CodesList: javacodes)));
            },
            child: ImageCard("images/vs-logo.png"),
          )
        ],
        options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 16 / 7,
            initialPage: 0,
            reverse: true,
            viewportFraction: 0.5,
            height: 200,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.225),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SizedBox(
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
