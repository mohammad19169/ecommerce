import 'package:flutter/material.dart';
import 'package:smit_task/utils/AppColors.dart';
import 'package:smit_task/screens/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? _email, _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/login_background_image.png',
            ),
            fit: BoxFit.cover,
          )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120, bottom: 80),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter',
                      color: AppColor.textGray,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          onChanged: (value) {
                            _email = value;
                          },
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(fontFamily: 'Inter'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter an Email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                            controller: passwordController,
                            onChanged: (value) {
                              _password = value;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(fontFamily: 'Inter'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter Password';
                              }
                              return null;
                            }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(right: 35, left: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign In',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Suse')),
                      CircleAvatar(
                        backgroundColor: AppColor.buttonBlue,
                        child: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              }
                            }),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Password Reset Email has been sent to you'),
                            duration: Duration(seconds: 3),
                          ));
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: AppColor.buttonBlue),
                        ))
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
