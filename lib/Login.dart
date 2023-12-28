
import 'package:dwelling_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'Malak/Create.dart';
import 'modal/button.dart';


class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0,
          backgroundColor: const Color(0xffFFFBFE), leading: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),


        body: SafeArea(child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 10),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60.0),
              const Center(
                child: Text('Login Account', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ), textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(
                child: Text('Hello, welcome back to our account  ',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  textAlign: TextAlign.left,
                ),
              ),
              //email
              const SizedBox(height: 40.0),

              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(labelText: 'Email',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                        suffixIcon: Icon(Icons.mail_outline, color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)),
                        )
                    ),
                  ),
                ),
              ),

              //password
              const SizedBox(height: 5.0),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: const InputDecoration(labelText: 'Password',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                        hintText: 'Enter your password',
                        suffixIcon: Icon(Icons.lock, color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)),
                        )
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(value:_isChecked, onChanged: (value){
                    setState((){
                      _isChecked=value!;
                    });
                  },
                    checkColor: Color(0xffBD5484),),


                  const Text('Remember me', style: TextStyle(color: Colors.grey),textAlign: TextAlign.left),
                  const SizedBox(width:100.0),
                  TextButton(
                      onPressed: () {

                      },
                      child: const Text('Forgot password', style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),textAlign: TextAlign.right,)

                  ),
                ],
              ),

              //confirm password

              //Continue Button
              const SizedBox(height: 50.0),
              Center(
                child: ElevatedButton(
                  style: buttonPrimary,
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen(),), (route) => false);

                  },
                  child: const Text(
                    'Login', style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                ),
              ),

              //Icons:gmail,Fb,..

              //comment
              const SizedBox(height: 70.0),
               Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not Registered yet?', style: TextStyle(
                      color: Colors.grey, fontSize: 14.0),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Create(),), (route) => false);

                    },
                    child: Text(' Create an Account', style: TextStyle(
                      color: Color(0xffBD5484), fontSize: 14.0)
                  ),
                  ),
                ],

              ),
            ],
          ),

        ),

        )
    );
  }
}
