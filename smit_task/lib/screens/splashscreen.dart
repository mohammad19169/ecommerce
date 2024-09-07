import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smit_task/screens/onboarding.dart';
import 'package:smit_task/screens/homepage.dart';

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
          context, MaterialPageRoute(builder: (context) => Onboardings()));
    });
  }

  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: (AssetImage('assets/images/splashimage.png')),
            fit: BoxFit.cover),
      ),
    ));
  }
}
