import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
    Home(),
    Text('data'),
    Text('data'),
    Text('data'),
  ];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          onTap: (index) {
            setState(
              () {
                selectedindex = index;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home-2-svgrepo-com.svg',
                  width: 25,
                  color: (selectedindex == 0) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/hotel-1-svgrepo-com.svg',
                  width: 25,
                  color: (selectedindex == 1) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/list-heart-svgrepo-com.svg',
                  width: 25,
                  color: (selectedindex == 2) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile-circle-svgrepo-com.svg',
                  width: 25,
                  color: (selectedindex == 3) ? Colors.purple : Colors.black,
                ),
                label: ''),
          ],
        ),
        body: pages.elementAt(selectedindex),
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
            Container(
              width: double.infinity,
              height: 480,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  Cart(
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: false,
                    bathroom: 2,
                    onTab: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                  Cart(
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: false,
                    bathroom: 2,
                    onTab: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                  Cart(
                    space: 12.0,
                    beds: 2,
                    nameUser: 'Mohammad Ahmad',
                    isFavorite: false,
                    bathroom: 2,
                    onTab: () {},
                    imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
                    imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
                    street: '70 West 37th Street #709',
                  ),
                ],
              ),
            ),
            // Cart(
            //   space: 12.0,
            //   beds: 2,
            //   nameUser: 'Mohammad Ahmad',
            //   isFavorite: false,
            //   bathroom: 2,
            //   onTab: () {},
            //   imageUser: 'assets/images/Screenshot 2023-11-30 155041.png',
            //   imageUrl: 'assets/images/Screenshot 2023-11-30 105004.png',
            //   street: '70 West 37th Street #709',
            // ),
            //

          ],
        ),
        Positioned(
          bottom: 20,
          left: 25,
          child: Image(
            image: AssetImage('assets/images/map.png'),
            width: 360,
            fit: BoxFit.fitWidth,
          ),
        )
      ],
    );
  }
}

class Cart extends StatefulWidget {
  const Cart({
    super.key,
    required this.imageUrl,
    required this.isFavorite,
    required this.space,
    required this.bathroom,
    required this.beds,
    required this.nameUser,
    required this.imageUser,
    required this.onTab,
    required this.street,
  });

  final String imageUrl;
  final bool isFavorite;
  final double space;
  final int bathroom;
  final int beds;
  final String nameUser;
  final String imageUser;
  final Function onTab;
  final String street;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.isFavorite;
    return Container(
      width: double.infinity,
      height: 430,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 40,right: 40,top: 40),
      child: Column(
        children: [
          Image.asset('${widget.imageUrl}'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '${widget.street}',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = !selected;
                    print(selected);
                  });
                },
                icon: Icon(
                  (selected)
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_outlined,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.drive_file_move_outline,
                    color: Colors.purpleAccent,
                  ),
                  Text(
                    '${widget.space}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.shower_outlined,
                    color: Colors.purpleAccent,
                  ),
                  Text(
                    '${widget.bathroom}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.bed_sharp, color: Colors.purpleAccent),
                  Text(
                    '${widget.beds} beds in',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.black,
              thickness: 1.5,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.imageUser),
                  ),
                  SizedBox(width: 10),
                  Text(widget.nameUser),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
