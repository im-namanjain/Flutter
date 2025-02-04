import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double smallLogo = 100;
    double bigLogo = 200;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
        return Stack(
          children: [
            PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromSize(
                      Rect.fromLTWH(
                        biggest.width / 2 - smallLogo / 2,
                        0,
                        smallLogo,
                        smallLogo,
                      ),
                      biggest),
                  end: RelativeRect.fromSize(
                      Rect.fromLTWH(
                        biggest.width / 2 - bigLogo / 2,
                        biggest.height - bigLogo,
                        bigLogo,
                        bigLogo,
                      ),
                      biggest),
                ).animate(CurvedAnimation(
                    parent: _controller, curve: Curves.slowMiddle)),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                )),
          ],
        );
      },
    );
  }
}
