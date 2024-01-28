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
          style: TextStyle(fontStyle: FontStyle.italic),
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
                Icons.favorite,
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
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/varad.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 46, 241, 46),
                                width: 2),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/sahil.jpg"))),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 5, 92),
                                width: 3),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/rohan.jpg"))),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 5, 92),
                                width: 3),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/parth.jpg"))),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 5, 92),
                                width: 3),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/shusi.jpg"))),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 206, 5, 92),
                                width: 3),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                image: AssetImage("images/storypic.jpg"))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("images/varad.jpg"))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "varad_ingale34 with 2 other",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 96,
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
                child: Image.asset("images/groupic.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          // count++;
                          favicon1 = !favicon1;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: favicon1 ? Colors.red : Colors.white,
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
                    "123 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "Happiness 😊 is having a bunch of freaking awesome and crazy friends..",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "@FriendShip👑...more",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View all 3 comments",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("images/varad.jpg"))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "varad_ingale34",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 170,
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
                child: Image.asset("images/shiv.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon2 = !favicon2;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: favicon2 ? Colors.red : Colors.white,
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
                    "503 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "No need to be learned from own fault. We can learn a lot from others mistakes. -Chhatrapati Shivaji Maharaj",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "@quotes...more",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View all 103 comments",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              image: AssetImage("images/varad.jpg"))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        "varad_ingale34",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 170,
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
                child: Image.asset("images/pratapgad.jpg"),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          favicon3 = !favicon3;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: favicon3 ? Colors.red : Colors.white,
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
                    "123 likes",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "It is very important fort as the major fight with Afzal Khan took place here on 10'th November 1659.",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "@Forts...more",
                    style: TextStyle(color: Colors.white),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 5),
                  child: const Text(
                    "View all 123 comments",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}