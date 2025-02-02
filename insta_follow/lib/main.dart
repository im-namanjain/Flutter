import 'package:flutter/material.dart';
import 'package:insta_follow/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> _users = [
    User('Peacock Feather', '@peacock', 'assets/images/one.jpg', false),
    User('Man', '@man', 'assets/images/two.jpg', false),
    User('Taj Mahal', '@tajmahal', 'assets/images/three.jpg', false),
    User('Book', '@book', 'assets/images/four.jpg', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Users you can follow',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(right: 20, left: 20),
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            return userComponent(
                name: _users[index].name,
                username: _users[index].username,
                image: _users[index].image,
                isFollowed: _users[index].isFollowedByMe,
                user: _users[index]);
          },
        ),
      ),
    );
  }

  userComponent({name, username, image, isFollowed, required User user}) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
                width: 60,
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(image),
                )),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  username,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            )
          ]),
          Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffeeeeee)),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                elevation: 0,
                color: isFollowed ? Color(0xfffeeeee) : Color(0xffffff),
                onPressed: () {
                  setState(() {
                    user.isFollowedByMe = !user.isFollowedByMe;
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(isFollowed ? 'Unfollow' : 'Follow',
                    style: TextStyle(color: Colors.black)),
              ))
        ],
      ),
    );
  }
}
