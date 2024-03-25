import 'package:flutter/material.dart';
import 'package:sqflite_player_info/home.dart';
import 'package:sqflite_player_info/sqlite.dart';

void main() {
  createDb();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}
