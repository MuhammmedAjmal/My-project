import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mynewapp/googleform/home.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => home1()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
        "https://saltnsprinkles.com/wp-content/uploads/2025/06/easy-healthy-ice-cream-bars-recipe-refined-sugar-free-e1749766307867-500x500.jpg?crop=1",
      ),
    );
  }
}
