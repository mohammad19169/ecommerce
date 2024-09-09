import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smit_task/screens/register.dart';
import 'package:smit_task/screens/welcome.dart';
import 'package:smit_task/utils/AppColors.dart';
import 'package:smit_task/screens/login.dart';
import 'package:flutter/services.dart';
import 'package:smit_task/widgets/Text.dart';

class Onboardings extends StatefulWidget {
  const Onboardings({super.key});

  @override
  State<Onboardings> createState() => _OnboardingsState();
}

// class _OnboardingsState extends State<Onboardings> {
//   continueMethod() {
//     Navigator.pushReplacement(
//         context, MaterialPageRoute(builder: (context) => Login()));
//   }
//
//   int pageindex = 0;
//
//   pageMethod(int index) {
//     setState(() {
//       pageindex = index;
//     });
//   }
//
//   PageController pageController = PageController();
//
//   List onboarding = [
//     {
//       'image': 'assets/images/screen1.png',
//       'title': 'Discover New Products',
//       'description': 'Shop the latest trends'
//     },
//     {
//       'image': 'assets/images/screen2.png',
//       'title': 'Easy & Fast Checkout',
//       'description': 'Secure and quick payments'
//     },
//     {
//       'image': 'assets/images/screen3.png',
//       'title': 'Exclusive Deals for You',
//       'description': 'Get offers and discounts'
//     }
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//         const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColor.transparent,
//         actions: [
//           TextButton(
//               onPressed: continueMethod,
//               child: Text(
//                 'skip',
//                 style: TextStyle(fontSize: 20, color: AppColor.textGray),
//               )),
//         ],
//       ),
//       body: Column(
//         children: [
//           PageView.builder(
//             controller: pageController,
//             onPageChanged: pageMethod,
//             itemCount: onboarding.length,
//             itemBuilder: (context, index) {
//               return Expanded(
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       onboarding[index]['image'],
//                     ),
//                     Text(onboarding[index]['title']),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(onboarding[index]['description']),
//                   ],
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
class _OnboardingsState extends State<Onboardings> {
  continueMethod() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Register()));
  }

  int pageindex = 0;

  pageMethod(int index) {
    setState(() {
      pageindex = index;
    });
  }

  PageController pageController = PageController();

  List onboarding = [
    {
      'image': 'assets/images/screen1.png', // String path for image
      'title': 'Discover New Products',
      'description': 'Shop the latest trends'
    },
    {
      'image': 'assets/images/screen2.png',
      'title': 'Easy & Fast Checkout',
      'description': 'Secure and quick payments'
    },
    {
      'image': 'assets/images/screen3.png',
      'title': 'Exclusive Deals for You',
      'description': 'Get offers and discounts'
    }
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: continueMethod,
            child: Text(
              'skip',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            // Add Expanded here to give bounded height
            child: PageView.builder(
              controller: pageController,
              onPageChanged: pageMethod,
              itemCount: onboarding.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      onboarding[index]['image'],
                      height: 300, // Explicit height for the image
                    ),
                    SizedBox(height: 20),
                    Text(
                      onboarding[index]['title'],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      onboarding[index]['description'],
                      style: TextStyle(fontSize: 16),
                    ),
                    //SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            (pageindex == onboarding.length - 1)
                                ? ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor.buttonBlue,
                                    ),
                                    onPressed: () {
                                      continueMethod();
                                    },
                                    child: CustomText(text: 'Continue'))
                                : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: List<Widget>.generate(
                                        onboarding.length, (index) {
                                      return AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        height: 10,
                                        width: (index==pageindex)?15:10,
                                        margin: EdgeInsets.symmetric(horizontal: 5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: (index==pageindex)?AppColor.primaryBlue:AppColor.textGray,
                                      ),
                                      );

                                    }),
                                  )
                          ]),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
