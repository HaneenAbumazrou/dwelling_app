import 'Login.dart';
import 'package:flutter/material.dart';
import 'Modal/Onboard.dart';
import 'Modal/button.dart';

class OnBoarding extends StatelessWidget {
  List<AssetImage> images = [
    const AssetImage('assets/images/Capture.png'),
    const AssetImage('assets/images/C.png'),
  ];
  int index = 0;

  OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80.0),
              // call images
              CarouselDemo(),
              const SizedBox(height: 40.0),
              const Text(
                'Best Experience',
                style: TextStyle(
                  color: Color(0xffBD5484),
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              // SizedBox(height:5.0,width:0),
              const Text(
                'Find your suitable roommate in dwelling duo app',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 80.0),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffBD5484),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()));// Implement logic for Log In button
                          },
                          style: ElevatedButton.styleFrom(minimumSize:const Size(350, 50),
                            primary: Colors.white,
                            onPrimary: Colors.black,
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () {
                            // Implement logic for Create an Account button
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                          ),
                          child: const Text(
                            'Create an Account',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
