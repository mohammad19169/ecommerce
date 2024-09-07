import 'package:flutter/material.dart';
import 'package:smit_task/screens/login.dart';
import 'package:smit_task/screens/register.dart';
import 'package:smit_task/utils/AppColors.dart';
import 'package:smit_task/widgets/Text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4A484),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, top: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 300,
                      width: 150,
                      child: Image.asset(
                        'assets/images/shopimage1_1.png',
                        fit: BoxFit.cover,
                        // height: MediaQuery.of(context).size.height * 0.5,
                        // width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          AssetImage('assets/images/shopimage2.png'),
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                          AssetImage('assets/images/shopimage3.png'),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  text: '    The',
                  style: TextStyle(
                      color: AppColor.textGray,
                      fontSize: 30,
                      fontFamily: 'Suse'),
                  children: [
                    TextSpan(
                      text: ' Fashion App',
                      style: TextStyle(
                          color: Colors.brown,
                          fontSize: 30,
                          fontFamily: 'Suse'),
                    ),
                    TextSpan(
                      text: ' That\nMakes You Look Your Best',
                      style: TextStyle(
                          color: AppColor.textGray,
                          fontSize: 30,
                          fontFamily: 'Suse'),
                    )
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 8),
              child: CustomText(
                  text:
                      '   Discover the latest trends and\nshop your favorite styles with ease!'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Register()));
              },
              child: Text("Let's Get Started",style: TextStyle(
                color: Colors.white70
              ),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff556B2F),
                  padding: EdgeInsets.symmetric(horizontal: 100)),
            ),
            SizedBox(height: 40,),
            Row(
            //  crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              CustomText(text: 'Already have an account'),
              TextButton(onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
              }, child: Text('Sign In',style: TextStyle(color: Color(0xff556B2F),decoration: TextDecoration.underline,fontSize: 20),))
            ],)
          ],
        ),
      ),
    );
  }
}
