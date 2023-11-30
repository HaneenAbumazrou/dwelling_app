import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          children: [
            Column(
              children: [
                Image.asset('name'),
                Text('Create new Account',style: TextStyle(color:Color(0xffBD5484),fontSize: 22,fontWeight: FontWeight.w700),),
              ],
            ),
          ],
        )
    );
  }
}

