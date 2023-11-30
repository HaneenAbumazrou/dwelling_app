import 'package:flutter/material.dart';

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
        selectedItemColor: Colors.purpleAccent,
        backgroundColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: ''),
        ],
      ),
      body: pages.elementAt(selectedindex),
    ));
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
    return Container(
      child: Stack(
        children: [
          Image.asset(
            'assets/images/Screenshot 2023-11-30 102342.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Container(
            width: 350,
            height: 430,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            margin: EdgeInsets.all(40),
            child: Column(
              children: [
                Image.asset('assets/images/Screenshot 2023-11-30 105004.png'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '70 West 37th Street #709',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          selected = !selected;
                          print(selected);
                        });
                      },
                      icon: Icon(
                        (selected)?
                        Icons.stars_rounded:Icons.star,
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
                          '12',
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
                          '2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.bed_sharp, color: Colors.purpleAccent),
                        Text(
                          '2 beds in',
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
                          backgroundImage: AssetImage(
                              'assets/images/Screenshot 2023-11-30 155041.png'),
                        ),
                        SizedBox(width: 10),
                        Text('Mohammad Ahmad'),
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
          )
        ],
      ),
    );
  }
}
