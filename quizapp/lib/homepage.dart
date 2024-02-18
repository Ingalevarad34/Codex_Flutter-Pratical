import 'package:flutter/material.dart';
import 'package:quizapp/quizlist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0;
  int selectedIndex = -1;
  int score = 0;

  Widget scorePage() {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg1.jpeg"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Result",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Marks Obtained $score / ${questions.length}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                score >= 2 ? "You are passed" : "You are failed",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        questionIndex = 0;
                        score = 0;
                      });
                    },
                    child: const Text("Try again")),
              )
            ],
          ),
        ),
      ),
    );
  }

  MaterialStatePropertyAll<Color?>? checkAns(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == selectedIndex) {
        if (selectedIndex == questions[questionIndex]["correctAnswer"]) {
          score++;
          return const MaterialStatePropertyAll(Colors.green);
        } else {
          return const MaterialStatePropertyAll(Colors.red);
        }
      } else {
        if (buttonIndex == questions[questionIndex]["correctAnswer"]) {
          return const MaterialStatePropertyAll(Colors.green);
        }
      }
    } else {
      return const MaterialStatePropertyAll(Colors.blue);
    }
    return const MaterialStatePropertyAll(Colors.blue);
  }

  @override
  Widget build(BuildContext context) {
    if (questionIndex == 3) {
      return scorePage();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectedIndex = -1;
          if (questionIndex < questions.length) {
            setState(() {
              questionIndex++;
            });
          } else {
            setState(() {
              questionIndex = 0;
              score = 0;
            });
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Questioins : ",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "${questionIndex + 1}/${questions.length}",
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              "Q.${questionIndex + 1}${questions[questionIndex]["questions"]}",
              style: const TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Text("A. ${questions[questionIndex]["options"][0]}"),
            style: ButtonStyle(
                backgroundColor: checkAns(0),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Text("B. ${questions[questionIndex]["options"][1]}"),
            style: ButtonStyle(
                backgroundColor: checkAns(1),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Text("C. ${questions[questionIndex]["options"][2]}"),
            style: ButtonStyle(
                backgroundColor: checkAns(2),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            child: Text("D. ${questions[questionIndex]["options"][3]}"),
            style: ButtonStyle(
                backgroundColor: checkAns(3),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
