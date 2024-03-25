import 'package:flutter/material.dart';
import 'package:sqflite_player_info/showdb.dart';
import 'package:sqflite_player_info/sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int jerNo = 0;
  String name = '';
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child: const Text(
                "JerNo",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  jerNo = int.parse(value);
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 70, left: 10, right: 10),
              child: const Text(
                "PlayerName",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: TextFormField(
                initialValue: '',
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
            ),
            InkWell(
              onTap: () async {
                print(jerNo);
                print(name);
                PlayerModelClass p = PlayerModelClass(jerNo: jerNo, name: name);
                await insertPlayer(p);
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Inserted details successfully')));
                });
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(top: 40),
                  child: const Center(
                      child: Text(
                    "Insert",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShowDb()));
              },
              child: Center(
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  margin: const EdgeInsets.only(top: 40),
                  child: const Center(
                      child: Text(
                    "ShowDb",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
