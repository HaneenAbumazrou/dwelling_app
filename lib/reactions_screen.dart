import 'package:flutter/material.dart';

import 'Widget/cart_widget.dart';



class ReactionsScreen extends StatefulWidget {
  const ReactionsScreen({super.key});

  @override
  State<ReactionsScreen> createState() => _ReactionsScreenState();
}

class _ReactionsScreenState extends State<ReactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/Screenshot 2023-11-30 102342.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              width: double.infinity,
              height: 730,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Cart(
                    onTab: (){},
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: true,
                    bathroom: 2,
                    onTabUserProfile: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                  Cart(
                    onTab: (){},
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: true,
                    bathroom: 2,
                    onTabUserProfile: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                  Cart(
                    onTab: (){},
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: false,
                    bathroom: 2,
                    onTabUserProfile: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                  Cart(
                    onTab: (){},
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: false,
                    bathroom: 2,
                    onTabUserProfile: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}
