import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar"),
          backgroundColor: Colors.amber,
        ),
        body: SizedBox(
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 160, top: 30,bottom: 10),
                child: Text("First row", style: TextStyle(fontSize: 20),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 255, 0, 0),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 0, 47, 255),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 88, 219, 95),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 160, top: 30 ,bottom: 10),
                child: Text("Second row", style: TextStyle(fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 88, 219, 90),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 17, 0, 255),
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Color.fromARGB(255, 255, 0, 38),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
