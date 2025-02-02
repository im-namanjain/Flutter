import 'package:flutter/material.dart';
import 'package:instagram/post.dart';
import 'package:instagram/profile.dart';
import 'package:instagram/reels.dart';
import 'package:instagram/search.dart';

class notificationpage extends StatelessWidget {
  const notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.black,
      ),
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
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/one.jpg")),
                    title: Text("Follow requests"),
                    subtitle: Text("Approve or ignore requests"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: Icon(Icons.rotate_right_outlined),
                    title: Text("You're all caught up"),
                    subtitle: Text(
                      "See new activity for username",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Today",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/two.jpg")),
                    title: Text("username started following you. 16h"),
                    trailing: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: Text("Following"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/three.jpg")),
                    title: Text("username liked your post. 23h"),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Yesterday",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/two.jpg")),
                    title: Text("username started following you. 16h"),
                    trailing: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: Text("Follow"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/four.jpg")),
                    title: Text("username liked your post. 23h"),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "This Week",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/two.jpg")),
                    title: Text("username started following you. 16h"),
                    trailing: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: Text("Following"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/three.jpg")),
                    title: Text("username liked your post. 23h"),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "This Month",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/two.jpg")),
                    title: Text("username started following you. 16h"),
                    trailing: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: Text("Following"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/three.jpg")),
                    title: Text("username liked your post. 23h"),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Earlier",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/three.jpg")),
                    title: Text("username started following you. 16h"),
                    trailing: Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey),
                            onPressed: () {},
                            child: Text("Following"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/two.jpg")),
                    title: Text("username liked your post. 23h"),
                    trailing: Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/images/one.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                )
              ],
            )),
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
                        onPressed: () {
                          Navigator.pushReplacement(
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
          ],
        ),
      ),
    );
  }
}
