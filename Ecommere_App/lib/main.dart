import 'package:flutter/material.dart';
import 'package:smit_task/screens/AddToCart.dart';
import 'package:smit_task/screens/homepage.dart';
import 'package:smit_task/screens/login.dart';
import 'package:smit_task/screens/register.dart';
import 'package:smit_task/screens/splashscreen.dart';
import 'package:smit_task/screens/onboarding.dart';
import 'package:smit_task/screens/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashs(),
    );
  }}



