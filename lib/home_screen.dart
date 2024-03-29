import 'package:dwelling_app/Details.dart';
import 'package:dwelling_app/favorite_screen.dart';
import 'package:dwelling_app/map_page.dart';
import 'package:dwelling_app/profile.dart';
import 'package:dwelling_app/reactions_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'Widget/cart_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
   const Home(),
    const ReactionsScreen(),
    const FavoriteScreen(),
    Profile(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-2-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 0) ? Color(0xffBD5484): Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/hotel-1-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 1) ? Color(0xffBD5484): Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/list-heart-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 2) ? Color(0xffBD5484) : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile-circle-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 3) ? Color(0xffBD5484): Colors.black,
                ),
                label: ''),
          ],
        ),
        body: pages.elementAt(selectedIndex),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              height: 480,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Cart(
                    onTab: (){
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Details(),), (route) => false);
                    },
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
        SizedBox(height:90 ),
        IconButton(onPressed:(){
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MapPage(),), (route) => false);
         } ,
            icon: Icon(Icons.location_on,size:100 ,color: Color(0xffBD5484),))
      ],
    );
  }
}


