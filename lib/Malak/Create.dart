import 'package:flutter/material.dart';

import '../Modal/button.dart';
import 'Create_2.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      CircleAvatar(child: Image.asset('assets/images/profile_icon.jpeg'),),
                      Text('Create new Account',style: TextStyle(color:Color(0xffBD5484),fontSize: 22,fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),

                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Name' ,floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your name',
                          suffixIcon: Icon(Icons.account_circle, color: Colors.grey,
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
                SizedBox(height: 5.0),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Phone Number',floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Phone number',
                          suffixIcon: Icon(Icons.phone_android, color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(50)),
                          )
                      ),
                    ),
                  ),
                ),

                //confirm password
                SizedBox(height: 5.0),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Email',floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
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

                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Password' ,floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Password',
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

                //password
                SizedBox(height: 5.0),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Confirm Password',floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Confirm your Password',
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
                SizedBox(height: 20,),
                Center(
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Create_2(),), (route) => false);

                    },
                    child: const Text(
                      'Next', style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
                  ],
                ),
          ),
        )
    );
  }
}

