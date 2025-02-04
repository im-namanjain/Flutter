import 'package:flutter/material.dart';
import 'package:hero_animation/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hero Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation"),
      ),
      body: Container(
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Hero(
              tag: 'background',
              child: Image.asset(
                "assets/images/three.jpg",
                width: 150,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
