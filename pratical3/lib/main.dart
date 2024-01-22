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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("click me"),
                onPressed: () {
                  print("someone clicked");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
