import 'package:flutter/material.dart';

class Content{
  static  Container onboard(String imgName)
  {
    return Container(
      width:300,
      height: 1500,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              imgName,) , fit: BoxFit.fill


        ) ,

      ),
    );
  }
}