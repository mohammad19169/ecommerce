import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smit_task/utils/AppColors.dart';
import 'package:smit_task/screens/login.dart';

class Register extends StatefulWidget {
  Register({super.key});


  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  String? _email , _password,_name;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/registration_image.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: AppColor.transparent,
          body: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(top: 130),
              ),
              Text(
                'SIGN UP',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: AppColor.textGray),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(right: 50, left: 50),
                  child:  Column(
                      children: [
                        TextFormField(
                          onChanged: (value){
                            _name=value;
                          },
                          keyboardType: TextInputType.emailAddress,
                            controller: nameController,
                            decoration: InputDecoration(
                                hintText: 'Name',

                                hintStyle: TextStyle(
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            validator:(value){
                            if(value==null||value.isEmpty){
                              return 'Enter a Name';
                            }
                            return null;
                            }
                    ),


                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          onChanged: (value){
                            _email=value;
                          },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter an Email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)))
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(

                          controller: passController,
                            obscureText: true,
                            onChanged: (value){
                              _password=value;
                            },
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                ),

                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                        validator:(String?value){
                            if(value==null||value.isEmpty){
                              return 'Enter Password';
                            }
                            return null;
                },
                        )
                      ],
                    ),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.buttonBlue),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Registration Successful'),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                        Future.delayed(Duration(seconds: 3), () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        });
                      };
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter'),
                      ))
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter'
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text('Login',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Inter'
                      ),),

                  )
                ],
              ),
            ]),
          )),
    );
  }
}
