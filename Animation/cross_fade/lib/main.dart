import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foo Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
  }

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 200,
                color: Colors.grey.shade400,
              ),
              secondChild: Image.asset(
                "assets/images/one.jpg",
                width: 200,
                height: 200,
              ),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 4),
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.bounceInOut,
            ),
            ElevatedButton(
              onPressed: () {
                reload();
              },
              child: Text('Show'),
            ),
          ],
        ),
      ),
    );
  }
}
