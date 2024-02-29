import 'package:flutter/material.dart';

class ToDoHome extends StatefulWidget {
  const ToDoHome({super.key});

  @override
  State<ToDoHome> createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome> {
  List<String> data = [];
  List delete = [];
  String Userdata = '';
  void addToDoList() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          width: 200,
          child: Column(children: [
            TextFormField(
              initialValue: '',
              decoration: const InputDecoration(label: Text("Task1")),
              onChanged: (value) {
                Userdata = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    addData();
                  });
                  Navigator.pop(context);
                },
                child: const Text("Save"))
          ]),
        );
      },
    );
  }

  void editToDoList(int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          width: 200,
          child: Column(children: [
            TextFormField(
              initialValue: data[index],
              decoration: const InputDecoration(label: Text("Task1")),
              onChanged: (value) {
                data[index] = value;
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Navigator.pop(context);
                },
                child: const Text("Save"))
          ]),
        );
      },
    );
  }

  void todeleteList(int index) {
    delete = data..removeWhere((item) => item == data[index]);
  }

  void addData() {
    data.add(Userdata);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            addToDoList();
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                height: 50,
                width: 50,
                color: Colors.amber,
                margin: const EdgeInsets.only(top: 10),
                child: Text(data[index]),
              ),
              onTap: () {
                editToDoList(index);
              },
              onLongPress: () {
                setState(() {});
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Do you want to delete this note"),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(ctx).pop();
                            todeleteList(index);
                          });
                        },
                        child: const Text("Yes"),
                      ),
                    ],
                  ),
                );
              },
            );
          }),
    );
  }
}
