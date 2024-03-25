import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class PlayerModelClass {
  int jerNo;
  String name;

  PlayerModelClass({required this.jerNo, required this.name});

  Map<String, dynamic> toMap() {
    return {"jerNo": jerNo, "name": name};
  }

  @override
  String toString() {
    return ''' jerNo : $jerNo , name : $name ''';
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   database = openDatabase(
//     join(await getDatabasesPath(), "Players.db"),
//     version: 1,
//     onCreate: (db, version) async {
//       await db
//           .execute("CREATE TABLE Player(name TEXT, jerNo INTEGER Primary key)");
//     },
//   );
//   // PlayerModelClass p = PlayerModelClass(jerNo: 1, name: "KL", runs: 10);
//   // PlayerModelClass p1 = PlayerModelClass(jerNo: 12, name: "virat", runs: 100);
//   // await insertPlayer(p);
//   // await insertPlayer(p1);
//   List player = await getPlayers();
//   print(player[0].toMap());
//   for (var element in player) {
//     print(element.name);
//   }
// }

Future createDb() async {
  print('create method called');
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "Players.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
          "CREATE TABLE Player(name TEXT, jerNo INTEGER Primary key)");
    },
  );
}

Future<void> insertPlayer(PlayerModelClass player) async {
  final localDB = await database;
  print(localDB);
  print("insert method called $player");
  await localDB.insert(
    "Player",
    player.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<PlayerModelClass>> getPlayers() async {
  final localDB = await database;

  List<Map<String, dynamic>> playerListOfMap = await localDB.query("Player");

  return List.generate(playerListOfMap.length, (index) {
    Map map = playerListOfMap[index];

    int jerNo = map["jerNo"];
    String name = map["name"];

    return PlayerModelClass(
      jerNo: jerNo,
      name: name,
    );
  });
}

Future<void> updatePlayer(PlayerModelClass player) async {
  final localDB = await database;
  await localDB.update(
    "Player",
    player.toMap(),
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}

Future<void> deletePlayer(PlayerModelClass player) async {
  final localDB = await database;
  await localDB.delete(
    "Player",
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}
