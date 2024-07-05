import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:whatsapp_app/utils/list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
        backgroundColor: Color(0xff075E54),
      ),
      body: IndexedStack(
        index: index,
        children: [
          SingleChildScrollView(
            //chats
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 80,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff1b5e54),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          index = 0;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: (index == 0)
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 5,
                              ),
                            ),
                          ),
                          child: const Text(
                            "CHATS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          index = 1;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: (index == 1)
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 5,
                              ),
                            ),
                          ),
                          child: const Text(
                            "STATUS",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          index = 2;
                          setState(() {});
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: (index == 2)
                                    ? Colors.white
                                    : Colors.transparent,
                                width: 5,
                              ),
                            ),
                          ),
                          child: const Text(
                            "CALLS",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ...chats.map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(e['img']),
                      ),
                      title: Text(
                        e['name'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        e['sub'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      trailing: Text(
                        e['time'],
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff1b5e54),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        index = 0;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 0)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CHATS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 1;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 1)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "STATUS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 2;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 2)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CALLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/144036679?v=4"),
                ),
                title: Text(
                  "My Status ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                subtitle: Text("Add status updates"),
                trailing: Icon(Icons.more_vert),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    )),
              ),
              ...status.map(
                (e) => ListTile(
                  leading: CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(e['img']),
                  ),
                  title: Text(
                    e['name'],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    e['sub'],
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      "Mute updates",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff1b5e54),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        index = 0;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 0)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CHATS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 1;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 1)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "STATUS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        index = 2;
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: (index == 2)
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 5,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CALLS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ...calls.map(
                (e) => ListTile(
                    leading: const CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/144036679?v=4"),
                    ),
                    title: Text(
                      e['name'],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Row(
                      children: [
                        e['2icon'],
                        Text(e['sub']),
                      ],
                    ),
                    trailing: e['1icon']),
              )
            ],
          ),
        ],
      ),
    );
  }
}
