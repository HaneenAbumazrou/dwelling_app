import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'On_model.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  List<Widget> items = [
    Content.onboard('assets/images/Capture.png') ,
    Content.onboard('assets/images/C.png') ,

  ];

  CarouselDemo({super.key});


  @override
  Widget build(BuildContext context) => Column(
      children: <Widget>[
        CarouselSlider(
          items: items,
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,

            viewportFraction: 0.9,
            aspectRatio: 1,
            initialPage: 1,
          ),
        ),

      ]
  );
}