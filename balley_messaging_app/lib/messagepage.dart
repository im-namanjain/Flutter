import 'package:balley_messaging_app/chatpage.dart';
import 'package:flutter/material.dart';

class messagepage extends StatelessWidget {
  const messagepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Message",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height - 20,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Divider(
                      thickness: 0.1,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatpage()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.5),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/three.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  child: Text(
                                    "Sender",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 2),
                                  child: Text(
                                    "Message",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    "start chat",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
