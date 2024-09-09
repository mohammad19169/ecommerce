import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smit_task/screens/onboarding.dart';
import 'package:smit_task/screens/homepage.dart';
import 'package:smit_task/screens/welcome.dart';

class splashs extends StatefulWidget {
  const splashs({super.key});

  @override
  State<splashs> createState() => _splashsState();
}

class _splashsState extends State<splashs> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Welcome()));
    });
  }

  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Center(
          child: Container(
              height: 300,
                width: 300,
                decoration: BoxDecoration(
          image: DecorationImage(
              image: (AssetImage('assets/images/cart.png')),
              fit: BoxFit.fill),
                ),
              ),
        ));
  }
}
