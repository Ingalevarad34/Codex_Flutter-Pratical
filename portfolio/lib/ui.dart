import 'package:flutter/material.dart';

class PortfolioUi extends StatefulWidget {
  const PortfolioUi({super.key});

  @override
  State<PortfolioUi> createState() => _PortfolioUiState();
}

class _PortfolioUiState extends State<PortfolioUi> {
  int count = 0;

  void reload() {
    setState(() {
      count++;
    });
  }

  Widget myName() {
    if (count >= 1) {
      return const Text(
        "Varad Ingale",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      );
    }
    return Container();
  }

  Widget myPic() {
    if (count >= 2) {
      return Container(
        margin: const EdgeInsets.only(left: 10, top: 20),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Colors.yellow,
                Colors.amber,
                Color.fromARGB(255, 255, 119, 0),
                Color.fromARGB(255, 244, 44, 13),
                Color.fromARGB(235, 233, 30, 98),
                Colors.purple,
                Colors.purple,
              ]),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage("images/warrior.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
      );
    }
    return Container();
  }

  Widget myInfo() {
    if (count >= 3) {
      return Container(
        margin: const EdgeInsets.only(left: 20),
        child: const Text(
          '''Hello their, Myself Varad Ingale I am flutter developer working as a junior flutter deverlper in codex.''',
          style: TextStyle(fontSize: 22),
        ),
      );
    }
    return Container();
  }

  Widget languages() {
    if (count >= 4) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        child: const Text(
          "Language : ",
          style: TextStyle(fontSize: 22),
        ),
      );
    }
    return Container();
  }

  Widget ImageCard(String image) {
    return Container(
      margin: const EdgeInsets.all(35),
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
    if (count >= 5) {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImageCard("images/java-14-logo.png"),
              ImageCard("images/Dart-logo.png"),
              ImageCard("images/Python-logo.png"),
              ImageCard("images/js-logo.png"),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  Widget FrameWork() {
    if (count >= 6) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        child: const Text(
          "FrameWork : ",
          style: TextStyle(fontSize: 22),
        ),
      );
    }
    return Container();
  }

  Widget FrameWorkWidgets() {
    if (count >= 7) {
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
    return Container();
  }

  Widget Database() {
    if (count >= 8) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        child: const Text(
          "Database : ",
          style: TextStyle(fontSize: 22),
        ),
      );
    }
    return Container();
  }

  Widget DatabaseWidgets() {
    if (count >= 9) {
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
    return Container();
  }

  Widget Tools() {
    if (count >= 10) {
      return Container(
        margin: const EdgeInsets.only(left: 20, top: 10),
        child: const Text(
          "Tools : ",
          style: TextStyle(fontSize: 22),
        ),
      );
    }
    return Container();
  }

  Widget ToolsWidgets() {
    if (count >= 11) {
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
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          IconButton(onPressed: reload, icon: const Icon(Icons.add)),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 30)),
              myName(),
              myPic(),
              const Padding(padding: EdgeInsets.only(top: 20)),
              myInfo(),
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
