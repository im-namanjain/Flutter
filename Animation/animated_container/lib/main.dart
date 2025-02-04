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
      title: 'Animation',
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
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.bounceIn,
              duration: Duration(seconds: 2),
              decoration: myDecor,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.orange);
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey);
                    flag = true;
                  }
                });
              },
              child: Text('Animate'),
            )
          ],
        ),
      ),
    );
  }
}
