import 'package:flutter/material.dart';
import 'package:smit_task/utils/AppColors.dart';
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBlue,
      appBar: AppBar(
        title: Center(child: Text('Homepage'),
        ),
      ),
      body: Center(
        child: Container(
           // color: Colors.white70,
            child: Text('The homepage',style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'Inter'),)
        ),
      ),
    );
  }
}