import 'package:flutter/material.dart';
import 'package:instagram/post.dart';
import 'package:instagram/reels.dart';
import 'package:instagram/search.dart';

class profilepage extends StatelessWidget {
  const profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("username"),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.add_box_outlined),
          SizedBox(
            width: 10,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      endDrawer: Drawer(
          backgroundColor: Colors.black,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Settings")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.av_timer),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Your activity")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.archive_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Archive")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.qr_code_scanner_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("QR code")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.bookmark_border_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Saved")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Shopping activity")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.verified_user_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Digital collectibles")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.menu_open_sharp),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Close Friends")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.star_border),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Favorites")
                  ],
                ),
              ),
            ],
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/two.jpg"),
                                radius: 40,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Posts")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Followers")
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Following")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("username"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 25,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Center(child: Text("Edit profile")),
                        ),
                        Container(
                          height: 25,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Center(child: Text("Share profile")),
                        ),
                        Container(
                          height: 25,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.person_add_rounded,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text("Discover people"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "See all",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SizedBox(
                        width: 10,
                      ),
                      for (var i = 0; i < 5; i++)
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 140,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 0.2, color: Colors.white)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/four.jpg"),
                                  radius: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("username"),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Followed By username",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.blue,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(child: Text("Follow")),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      SizedBox(
                        width: 10,
                      )
                    ]),
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
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.home_filled)),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => searchpage())));
                        },
                        icon: Icon(Icons.search)),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => postpage())));
                        },
                        icon: Icon(Icons.add_box_outlined)),
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => reelspage())));
                        },
                        icon: Icon(Icons.ondemand_video_sharp)),
                    IconButton(
                        onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
