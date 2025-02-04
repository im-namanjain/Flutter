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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 200.0, end: 100.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.blue, end: Colors.orange)
        .animate(animationController);

    animationController.addListener(() {
      print(animation.value);
      setState(() {});
    });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: colorAnimation.value,
        ),
      ),
    );
  }
}
