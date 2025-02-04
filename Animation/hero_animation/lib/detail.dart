import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
        child: Hero(
          tag: 'background',
          child: Image.asset(
            "assets/images/three.jpg",
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
