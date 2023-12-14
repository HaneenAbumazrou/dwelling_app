import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Stack(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/Screenshot (2).png'),
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  Divider(
                    color: Color(0xffBD5484),
                    thickness: 6.0,
                  ),
                ],
              ),
              Positioned(
                left: 16,
                top: 70,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 150,
                    height: 180,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Color(0xffBD5484),
                        width: 3.0,
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 220,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      color: Color(0xffBD5484),
                      iconSize: 30,
                    ),
                    SizedBox(height: 5),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                      color: Color(0xffBD5484),
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Desmond Joel',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Software Developer',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Profile:',style: TextStyle(fontSize: 16,color: Color(0xffBD5484)),),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing \n elit. Sed euismod, quam id malesuada accumsan,\n sapien augue tincidunt nunc, eu eleifend velit tellus\n vel est.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
