import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http_as_backend/userdetails.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  List realData = [];
  fetch() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    realData = json.decode(response.body);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backend Data'),
      ),
      body: ListView.builder(
        itemCount: realData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 285,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetails(
                          userProfile: realData[index],
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "${realData[index]["name"]}",
                    style: const TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
