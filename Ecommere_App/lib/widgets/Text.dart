import'package:smit_task/utils/AppColors.dart';
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget{
  final String text;
  const CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // D
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color:Colors.black,
      ),
    );
  }}