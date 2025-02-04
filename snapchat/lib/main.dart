import 'dart:async';
import 'package:flutter/material.dart';
import 'package:snapchat/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snapchat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => firstpage(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.yellowAccent,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            constraints: BoxConstraints(maxWidth: 125),
            margin: EdgeInsets.only(bottom: 250),
            child: Image.asset(
              "assets/images/snapchat.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
