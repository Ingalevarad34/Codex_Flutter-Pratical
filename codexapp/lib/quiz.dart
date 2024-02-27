import 'package:flutter/material.dart';

class QuizHome extends StatefulWidget {
  List questions;

  QuizHome({super.key, required this.questions});
  @override
  State<QuizHome> createState() => _QuizHomeState(questions);
}

class _QuizHomeState extends State<QuizHome> {
  List questions;
  _QuizHomeState(this.questions);

  int questionIndex = -1;
  int selectedIndex = -1;
  int score = 0;
  bool isEnabled = false;

  Widget welcomePage() {
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
                "Welcome To Our Quiz App",
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Total Marks ${questions.length}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 10),
                child: const Text(
                  "Your grade will be showned at the result time",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        questionIndex = 0;
                      });
                    },
                    child: const Text("Start Quiz")),
              )
            ],
          ),
        ),
      ),
    );
  }

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
                score >= 3 ? "You are passed" : "You are failed",
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
          if (isEnabled == true) {
            score++;
            print(score);
          }
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
    if (questionIndex == -1) {
      return welcomePage();
    }
    if (questionIndex == questions.length) {
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
              isEnabled = false;
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
            padding: const EdgeInsets.all(10),
            child: Text(
              "Q.${questionIndex + 1}${questions[questionIndex]["questions"]}",
              style: const TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: isEnabled
                ? null
                : () {
                    setState(() {
                      selectedIndex = 0;
                      isEnabled = !isEnabled;
                    });
                  },
            style: ButtonStyle(
                backgroundColor: checkAns(0),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
            child: Text("A. ${questions[questionIndex]["options"][0]}"),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: isEnabled
                ? null
                : () {
                    setState(() {
                      selectedIndex = 1;
                      isEnabled = !isEnabled;
                    });
                  },
            style: ButtonStyle(
                backgroundColor: checkAns(1),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
            child: Text("B. ${questions[questionIndex]["options"][1]}"),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: isEnabled
                ? null
                : () {
                    setState(() {
                      selectedIndex = 2;
                      isEnabled = !isEnabled;
                    });
                  },
            style: ButtonStyle(
                backgroundColor: checkAns(2),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
            child: Text("C. ${questions[questionIndex]["options"][2]}"),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: isEnabled
                ? null
                : () {
                    setState(() {
                      selectedIndex = 3;
                      isEnabled = !isEnabled;
                    });
                  },
            style: ButtonStyle(
                backgroundColor: checkAns(3),
                fixedSize: const MaterialStatePropertyAll(Size(330, 20))),
            child: Text("D. ${questions[questionIndex]["options"][3]}"),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
