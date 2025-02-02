import 'package:flutter/material.dart';
import 'package:instagram/post.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/search.dart';

class reelspage extends StatelessWidget {
  const reelspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            children: [
              SizedBox(
                height: 28,
              ),
              Container(
                  height: MediaQuery.of(context).size.height - 28,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 88,
                            child: Image.asset(
                              "assets/images/one.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 20,
                            child: Text(
                              "Reels",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            top: 15,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 30,
                            ),
                          ),
                          Positioned(
                            right: 5,
                            bottom: 15,
                            child: Container(
                              height: 250,
                              width: 70,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.favorite_outline),
                                  Text("likes"),
                                  Icon(Icons.comment_sharp),
                                  Text("comment"),
                                  Icon(Icons.send_outlined),
                                  Icon(Icons.more_vert),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/two.jpg"),
                                            fit: BoxFit.cover)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Container(
                              width: 300,
                              height: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/images/two.jpg",
                                        ),
                                        radius: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("username"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                              width: 1, color: Colors.white),
                                          color: Colors.transparent,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 16,
                                              right: 16),
                                          child: Text("Follow"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Hello, Like my video and folow me"),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Liked by username and others",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.arrow_outward_rounded),
                                      Text("Original audio song name"),
                                      Icon(Icons.location_on),
                                      Text("India")
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
                                            builder: ((context) =>
                                                searchpage())));
                                  },
                                  icon: Icon(Icons.search)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                postpage())));
                                  },
                                  icon: Icon(Icons.add_box_outlined)),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.ondemand_video_sharp)),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                profilepage())));
                                  },
                                  icon: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/one.jpg"),
                                            fit: BoxFit.cover)),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
