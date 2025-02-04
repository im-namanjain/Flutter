import 'package:flutter/material.dart';
import 'package:snapchat/screens/camera.dart';
import 'package:snapchat/screens/chat.dart';
import 'package:snapchat/screens/stories.dart';

class firstpage extends StatefulWidget {
  firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  int _currentIndex = 0;
  PageController _pageController = PageController(initialPage: 0);

  final _bottom = [
    BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: 'Chat'),
    BottomNavigationBarItem(
        icon: Icon(Icons.camera_alt_outlined), label: 'Camera'),
    BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: 'Stories'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          scrollDirection: Axis.horizontal,
          children: [
            chatpage(),
            camerapage(),
            storiespage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: _bottom,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 1), curve: Curves.ease);
          },
        ));
  }
}
