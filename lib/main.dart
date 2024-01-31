import 'package:dwelling_app/Details.dart';
import 'package:dwelling_app/home_screen.dart';
import 'package:dwelling_app/map_page.dart';
import 'package:dwelling_app/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'MyProfile.dart';
import 'OnBoarding.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnBoarding (),
  ));
}


