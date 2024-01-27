import 'package:flutter/material.dart';

class CodeXapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CodeX",
          style: TextStyle(fontSize: 22, color: Color.fromARGB(255, 0, 0, 0)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Color.fromARGB(255, 0, 0, 0),
          )
        ],
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text(
                  "Languages",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/java-14-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/Dart-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/Python-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/js-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text(
                  "FramWork",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/react-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/flutter-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/spring-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/hibernate-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text(
                  "DataBase",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/maria.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/mongodb.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/mysql.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/oracle.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 20,
                margin: EdgeInsets.only(left: 20, top: 30, bottom: 10),
                child: Text(
                  "Tools",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/git-img.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/github.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/postman.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 120,
                        width: 120,
                        child: Image.asset("images/vs-logo.png"),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(5, 0),
                              )
                            ]),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
