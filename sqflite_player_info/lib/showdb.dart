import 'package:flutter/material.dart';
import 'package:sqflite_player_info/sqlite.dart';

class ShowDb extends StatefulWidget {
  const ShowDb({super.key});

  @override
  State<ShowDb> createState() => _ShowDbState();
}

class _ShowDbState extends State<ShowDb> {
  @override
  List tempdata = [];
  List data = [];
  String updatename = '';
  int updateJerno = 0;
  fetchdata() async {
    // await getPlayers();
    tempdata = await getPlayers();
    print(tempdata);
    for (var element in tempdata) {
      data.add(element.toMap());
      print(data);
    }
    setState(() {});
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  void editToDoList(Map index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          width: 200,
          child: Column(children: [
            TextFormField(
              initialValue: '${index["name"]}',
              decoration: const InputDecoration(label: Text("Task1")),
              onChanged: (value) {
                // data[index]["name"] = value;
                updatename = value;
                print(updatename);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  updateJerno = index["jerNo"];
                  print(updatename);
                  print(updateJerno);
                  PlayerModelClass p =
                      PlayerModelClass(jerNo: updateJerno, name: updatename);

                  index["jerNo"] = updateJerno;
                  index["name"] = updatename;
                  await updatePlayer(p);

                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text("Save"))
          ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(border: Border.all()),
          height: 50,
          margin: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${data[index]["jerNo"]}',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '${data[index]["name"]}',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                  onPressed: () {
                    print("data index ${data[index]}");
                    editToDoList(data[index]);
                  },
                  icon: const Icon(Icons.edit)),
              IconButton(
                  onPressed: () async {
                    data.removeAt(index);
                    await deletePlayer(tempdata[index]);
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete)),
            ],
          ),
        ),
      ),
    );
  }
}
