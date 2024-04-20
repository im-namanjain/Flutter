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
      title: 'Trip App',
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
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _pageController,
      children: <Widget>[
        makePage(
          number: '1',
          image: 'assets/images/one.jpg',
          title: 'abc',
          description: 'Details',
          rating: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              Text(
                '4.0',
                style: TextStyle(color: Colors.white70),
              ),
              Text(
                '(545)',
                style: TextStyle(color: Colors.white38, fontSize: 12),
              )
            ],
          ),
        ),
        makePage(
          number: '2',
          image: 'assets/images/two.jpg',
          title: 'Dessert',
          description: 'Details',
          rating: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.grey,
                  size: 15,
                ),
              ),
              Text(
                '3.0',
                style: TextStyle(color: Colors.white70),
              ),
              Text(
                '(305)',
                style: TextStyle(color: Colors.white38, fontSize: 12),
              )
            ],
          ),
        ),
        makePage(
          number: '3',
          image: 'assets/images/three.jpg',
          title: 'Taj Mahal',
          description: 'Details',
          rating: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Text(
                '5.0',
                style: TextStyle(color: Colors.white70),
              ),
              Text(
                '(719)',
                style: TextStyle(color: Colors.white38, fontSize: 12),
              )
            ],
          ),
        ),
        makePage(
          number: '4',
          image: 'assets/images/four.jpg',
          title: 'Mountain',
          description: 'Details',
          rating: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5),
                child: Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 15,
                ),
              ),
              Text(
                '5.0',
                style: TextStyle(color: Colors.white70),
              ),
              Text(
                '(659)',
                style: TextStyle(color: Colors.white38, fontSize: 12),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Widget makePage({number, image, title, required String description, rating}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0
          ], colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        number,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '/4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        rating,
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            description,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.7),
                                height: 1.9,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'READ MORE',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ]),
          )),
    );
  }
}
