import 'package:flutter/material.dart';

class InstaApp extends StatefulWidget {
  const InstaApp({super.key});

  @override
  State<InstaApp> createState() => _InstaAppState();
}

class _InstaAppState extends State<InstaApp> {
  bool favicon = false;
  bool favicon1 = false;
  bool favicon2 = false;
  bool favicon3 = false;
  bool bodycolor = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontFamily: "Schyler"),
        ),
        backgroundColor: bodycolor
            ? const Color.fromARGB(255, 255, 255, 255)
            : const Color.fromARGB(255, 0, 0, 0),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  favicon = !favicon;
                });
              },
              icon: Icon(
                Icons.favorite_border_outlined,
                color: favicon ? Colors.red : Colors.white,
              )),
          // IconButton(
          //     onPressed: () {
          //       setState(() {
          //         bodycolor = !bodycolor;
          //       });
          //     },
          //     icon: Icon(
          //       Icons.radar_outlined,
          //       color: Colors.white,
          //     )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: bodycolor
            ? const Color.fromARGB(255, 255, 255, 255)
            : const Color.fromARGB(255, 0, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.amber,
                                      Color.fromARGB(255, 255, 119, 0),
                                      Color.fromARGB(255, 244, 44, 13),
                                      Color.fromARGB(235, 233, 30, 98),
                                      Colors.purple,
                                      Colors.purple,
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage("images/varad.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "Your Story",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                      Color.fromARGB(255, 21, 255, 0),
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage("images/sahil.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "_sahil_k18_",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.amber,
                                      Color.fromARGB(255, 255, 119, 0),
                                      Color.fromARGB(255, 244, 44, 13),
                                      Color.fromARGB(235, 233, 30, 98),
                                      Colors.purple,
                                      Colors.purple,
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage("images/rohan.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "_mr_rohan",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.amber,
                                      Color.fromARGB(255, 255, 119, 0),
                                      Color.fromARGB(255, 244, 44, 13),
                                      Color.fromARGB(235, 233, 30, 98),
                                      Colors.purple,
                                      Colors.purple,
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "images/codeX-Logo.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "codex_satara",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.amber,
                                      Color.fromARGB(255, 255, 119, 0),
                                      Color.fromARGB(255, 244, 44, 13),
                                      Color.fromARGB(235, 233, 30, 98),
                                      Colors.purple,
                                      Colors.purple,
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage("images/shusi.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "limbolesuho..",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 15,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: 78,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Colors.yellow,
                                      Colors.amber,
                                      Color.fromARGB(255, 255, 119, 0),
                                      Color.fromARGB(255, 244, 44, 13),
                                      Color.fromARGB(235, 233, 30, 98),
                                      Colors.purple,
                                      Colors.purple,
                                    ]),
                                borderRadius: BorderRadius.circular(38),
                              ),
                              child: Center(
                                child: Container(
                                  height: 73,
                                  width: 73,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(36),
                                      image: DecorationImage(
                                          image: AssetImage("images/parth.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              margin: EdgeInsets.only(top: 4),
                              child: Text(
                                "_parth_2202",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.yellow,
                              Colors.amber,
                              Color.fromARGB(255, 255, 119, 0),
                              Color.fromARGB(255, 244, 44, 13),
                              Color.fromARGB(235, 233, 30, 98),
                              Colors.purple,
                              Colors.purple,
                            ]),
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Center(
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/codeX-Logo.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 145),
                      child: const Text(
                        "codex_technologies_satara",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                child: Image.asset("images/codex.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon1 = !favicon1;
                        });
                      },
                      icon: favicon1
                          ? Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_sharp,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 219,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text(
                    "111 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "codex_technologies_satara Unlocking potentials 🖥️",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "...more",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "1 day ago",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.yellow,
                              Colors.amber,
                              Color.fromARGB(255, 255, 119, 0),
                              Color.fromARGB(255, 244, 44, 13),
                              Color.fromARGB(235, 233, 30, 98),
                              Colors.purple,
                              Colors.purple,
                            ]),
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Center(
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/sahil.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 244),
                      child: const Text(
                        "_sahil_k18_",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                child: Image.asset("images/sahil.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon2 = !favicon2;
                        });
                      },
                      icon: favicon2
                          ? Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.messenger_outline_sharp,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 219,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text(
                    "109 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "cute❤️",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View Comments",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "varad_ingale34 🔥🔥🔥",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "31 jan 2024",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.yellow,
                              Colors.amber,
                              Color.fromARGB(255, 255, 119, 0),
                              Color.fromARGB(255, 244, 44, 13),
                              Color.fromARGB(235, 233, 30, 98),
                              Colors.purple,
                              Colors.purple,
                            ]),
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Center(
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/rohan.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 250),
                      child: const Text(
                        "_mr_rohan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                child: Image.asset("images/rohan.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon3 = !favicon3;
                        });
                      },
                      icon: favicon3
                          ? Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 160,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text(
                    "125 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "Click- samsung S22ultra💥💫",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "...more",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View all 6 comments",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "varad_ingale34🔥🔥🔥",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "_sahil_k18_🔥",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "2 May 2023",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.yellow,
                              Colors.amber,
                              Color.fromARGB(255, 255, 119, 0),
                              Color.fromARGB(255, 244, 44, 13),
                              Color.fromARGB(235, 233, 30, 98),
                              Colors.purple,
                              Colors.purple,
                            ]),
                        borderRadius: BorderRadius.circular(38),
                      ),
                      child: Center(
                        child: Container(
                          height: 29,
                          width: 29,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  image: AssetImage("images/shusi.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 209),
                      child: const Text(
                        "limbolesushoban",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Container(
                child: Image.asset("images/shusipost.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon3 = !favicon3;
                        });
                      },
                      icon: favicon3
                          ? Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                            )
                          : Icon(
                              Icons.favorite_outline_sharp,
                              color: Colors.white,
                            )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 160,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark,
                        color: Colors.white,
                      )),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 10),
                  child: const Text(
                    "81 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "Limbolesushobhan Traditional Day Special✌️",
                    style: TextStyle(color: Colors.white),
                  )),
              
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View all 11 comments",
                    style: TextStyle(color: Colors.white38),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "varad_ingale34🔥🔥🔥",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "30 May 2023",
                    style: TextStyle(color: Colors.white38),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
