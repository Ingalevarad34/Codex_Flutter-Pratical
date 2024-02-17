import 'package:flutter/material.dart';
import 'package:quizapp/quizlist.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int index = 0;
  int? option1;
  int? option2;
  int? option3;
  int? option4;

  Color setcolor(int? option) {
    if (option == Questions[index]["answer"]) {
      return Colors.green;
    } else if (option == null) {
      return Color.fromARGB(255, 34, 150, 243);
    }
    return Colors.red;
  }

  void setdefault() {
    option1 = null;
    option2 = null;
    option3 = null;
    option4 = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index < Questions.length - 1) {
            setState(() {
              setdefault();
              '${index++}';
            });
          }
        },
        child: const Icon(Icons.arrow_forward_sharp),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Question ${Questions.length}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Q.${index + 1} ${Questions[index]["question"]}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  setcolor(option1),
                )),
                onPressed: () {
                  setState(() {
                    option1 = 0;
                  });
                },
                child: Text('A. ${Questions[index]["option"][0]}',
                    style: const TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  setcolor(option2),
                )),
                onPressed: () {
                  setState(() {
                    option2 = 1;
                  });
                },
                child: Text('B. ${Questions[index]["option"][1]}',
                    style: const TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  setcolor(option3),
                )),
                onPressed: () {
                  setState(() {
                    option3 = 2;
                  });
                },
                child: Text('C. ${Questions[index]["option"][2]}',
                    style: const TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  setcolor(option4),
                )),
                onPressed: () {
                  setState(() {
                    option4 = 3;
                  });
                },
                child: Text('D. ${Questions[index]["option"][3]}',
                    style: const TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
