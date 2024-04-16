import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 360,
            height: 270,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(13000, 5000),
                  bottomRight: Radius.elliptical(13000, 5000)),
              child: Image(
                image: AssetImage("assets/images/three.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 30,
          ),
          Container(
            width: 320,
            height: 220,
            decoration: BoxDecoration(
                color: Colors.white, boxShadow: [BoxShadow(blurRadius: 2)]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 15,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextField(),
                  Container(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      color: Colors.black,
                      onPressed: () {},
                    )),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(width: 30),
                Text("Reloading"),
                Container(
                  width: 132,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      " SIGNIN ",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Social Login",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 125,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/one.jpg"))),
                ),
                Container(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/two.jpg"))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
