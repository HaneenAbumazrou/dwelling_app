import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> pages = [
   const Home(),
    const Text('data'),
    const Text('data'),
    const Text('data'),
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
                  color: (selectedIndex == 0) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/hotel-1-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 1) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/list-heart-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 2) ? Colors.purple : Colors.black,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/profile-circle-svgrepo-com.svg',
                  width: 25,
                  color: (selectedIndex == 3) ? Colors.purple : Colors.black,
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
                ],
              ),
            ),
          ],
        ),
        const Image(
          image: AssetImage('assets/images/map.png'),
          width: 360,
          fit: BoxFit.fitWidth,
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
    required this.onTabUserProfile,
    required this.street,
    required this.onTab,
  });

  final String imageUrl;
  final bool isFavorite;
  final double space;
  final int bathroom;
  final int beds;
  final String nameUser;
  final String imageUser;
  final Function onTabUserProfile;
  final VoidCallback onTab;
  final String street;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.isFavorite;
    return TextButton(
      onPressed: widget.onTab,
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(left: 30,right: 30,top: 30),
        child: Column(
          children: [
            Image.asset(widget.imageUrl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.street,
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.drive_file_move_outline,
                      color: Colors.purpleAccent,
                    ),
                    Text(
                      '${widget.space}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.shower_outlined,
                      color: Colors.purpleAccent,
                    ),
                    Text(
                      '${widget.bathroom}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.bed_sharp, color: Colors.purpleAccent),
                    Text(
                      '${widget.beds} beds in',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.black,
                thickness: 1.5,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.imageUser),
                    ),
                    const SizedBox(width: 10),
                    Text(widget.nameUser),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
