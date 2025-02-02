import 'package:flutter/material.dart';
import 'package:instagram/chat.dart';
import 'package:instagram/notification.dart';
import 'package:instagram/post.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/reels.dart';
import 'package:instagram/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(brightness: Brightness.dark),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrimages = [
      "assets/images/one.jpg",
      "assets/images/two.jpg",
      "assets/images/three.jpg",
      "assets/images/four.jpg",
      "assets/images/one.jpg",
      "assets/images/two.jpg",
      "assets/images/three.jpg",
      "assets/images/four.jpg"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => notificationpage())));
              },
              icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => chatpage())));
              },
              icon: Icon(Icons.chat))
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  child: ListView.builder(
                      itemCount: arrimages.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(7),
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  image: DecorationImage(
                                      image: AssetImage(arrimages[index]),
                                      fit: BoxFit.cover)),
                            ),
                            Text("username")
                          ],
                        );
                      })),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/one.jpg"),
                                radius: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("username")
                            ],
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.asset(
                    "assets/images/one.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment_rounded)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border))
                    ],
                  ),
                ),
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/one.jpg"),
                      radius: 15,
                    ),
                    Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              )),
                        )),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "date & time",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/two.jpg"),
                                  radius: 15),
                              SizedBox(
                                width: 10,
                              ),
                              Text("username")
                            ],
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.asset(
                    "assets/images/two.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment_rounded)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border))
                    ],
                  ),
                ),
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/two.jpg"),
                      radius: 15,
                    ),
                    Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              )),
                        )),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "date & time",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/three.jpg"),
                                  radius: 15),
                              SizedBox(
                                width: 10,
                              ),
                              Text("username")
                            ],
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.asset(
                    "assets/images/three.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment_rounded)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border))
                    ],
                  ),
                ),
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/three.jpg"),
                      radius: 15,
                    ),
                    Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              )),
                        )),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "date & time",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/four.jpg"),
                                  radius: 15),
                              SizedBox(
                                width: 10,
                              ),
                              Text("username")
                            ],
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 350,
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Image.asset(
                    "assets/images/four.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.comment_rounded)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                        ],
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.bookmark_border))
                    ],
                  ),
                ),
                Container(
                  child: Row(children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/four.jpg"),
                      radius: 15,
                    ),
                    Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Add a comment...",
                              hintStyle: TextStyle(fontSize: 13),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              )),
                        )),
                  ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "date & time",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                )
              ],
            ),
          ),
          Positioned(
            height: 60,
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => searchpage())));
                      },
                      icon: Icon(Icons.search)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => postpage())));
                      },
                      icon: Icon(Icons.add_box_outlined)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => reelspage())));
                      },
                      icon: Icon(Icons.ondemand_video_sharp)),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => profilepage())));
                      },
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/images/one.jpg"),
                                fit: BoxFit.cover)),
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
