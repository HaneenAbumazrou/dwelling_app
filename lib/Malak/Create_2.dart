import 'dart:io';

import 'package:dwelling_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Login.dart';
import '../Modal/button.dart';

class Create_2 extends StatefulWidget {
   Create_2({super.key});

  @override
  State<Create_2> createState() => _Create_2State();
}

class _Create_2State extends State<Create_2> {
  bool _isChecked = false;
  late File _image;

  Future _getImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _image = File(""); // Initialize with an empty file
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Center(child: CircleAvatar(child: Image.asset('assets/images/profile_icon.jpeg'),)),
                SizedBox(height: 50,),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Gender',floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Gender',
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

                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller:TextEditingController(),
                      decoration: InputDecoration(labelText:'Additional Information',floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(),
                          hintText: 'Tell us about yourself',
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
                SizedBox(height:20),
                Text('pick your preferred Age range',style: TextStyle(color: Color(0xffBD5484)),),
                Row(
                  children: [
                    Checkbox(value:_isChecked, onChanged: (value){
                      setState((){
                        _isChecked=value!;
                      });
                    },
                      checkColor: Color(0xffBD5484),),
                    Text('18 - 28',style: TextStyle(color: Colors.black54),),
                    SizedBox(width: 20,),
                    Checkbox(value:_isChecked, onChanged: (value){
                      setState((){
                        _isChecked=value!;
                      });
                    },
                      checkColor: Color(0xffBD5484),),
                    Text('29 - 39',style: TextStyle(color: Colors.black54),),
                    SizedBox(width: 20,),
                    Checkbox(value:_isChecked, onChanged: (value){
                      setState((){
                        _isChecked=value!;
                      });
                    },
                      checkColor: Color(0xffBD5484),),
                    Text('40 - 50',style: TextStyle(color: Colors.black54),),
                  ],
                ),
                SizedBox(height:20),
                Text('What type of roommate are you looking for?',style: TextStyle(fontWeight: FontWeight.bold),),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(value:_isChecked, onChanged: (value){
                      setState((){
                        _isChecked=value!;
                      });
                    },
                      checkColor: Color(0xffBD5484),),
                    Text('Female',style: TextStyle(color: Colors.black54),),
                    SizedBox(width: 20,),
                    Checkbox(value:_isChecked, onChanged: (value){
                      setState((){
                        _isChecked=value!;
                      });
                    },
                      checkColor: Color(0xffBD5484),),
                    Text('Male',style: TextStyle(color: Colors.black54),),
                  ],
                ),
                _image.path.isNotEmpty
                    ? Image.file(
                  _image,
                  height: 200,
                  width: 200,
                )
                    : Text('Pick your Profile Picture',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 5),
                TextButton(
                  onPressed: _getImage,
                  child: Row(
                    children: [
                      Text('Attach your Image', style: TextStyle(color: Color(0xffBD5484)),),
                      SizedBox(width: 20,),
                      Icon(Icons.camera_alt_outlined,size: 20,color: Color(0xffBD5484),),
                    ],
                  ),
                ),
              SizedBox(height:30),
                Center(
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => HomeScreen(),), (route) => false);

                    },
                    child: const Text(
                      'Sign Up', style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14,color: Color(0xffBD5484))),
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Login()));
                    }, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14,decoration: TextDecoration.underline,color: Color(0xffBD5484))))


                  ],
                ),

              ],
            ),
          ),
        ),

    );
  }
}
