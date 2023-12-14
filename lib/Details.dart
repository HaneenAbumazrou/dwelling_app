import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/Screenshot 2023-12-14 101456.png'),
                          width: double.maxFinite,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    Positioned(
                      left: 10,
                      top: 20,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 390,
                          height: 220,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Color(0xffBD5484),
                              width: 3,
                            ),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Screenshot 2023-11-30 105004.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' 100JD / mo',
                            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Midtown South, New York',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '70 West 37th Street #709',
                            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.drive_file_move_outline,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '12',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8), // Add this SizedBox for spacing
                              Row(
                                children: [
                                  const Icon(
                                    Icons.shower_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 8), // Add this SizedBox for spacing
                              Row(
                                children: [
                                  const Icon(Icons.bed_sharp, color: Colors.white),
                                  Text(
                                    '3 beds in',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Room description:',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text(
                                'Feel at home wherever you choose to live\n with Blueground. You’ll love this\n sophisticated Midtown furnished \none-bedroom apartment with its modern \ndecor, fully equipped kitchen, and cheery\n living room with great balcony views. ',
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Adjust spacing as needed
                Container(
                  height:300, // Adjust the height of the scrollable photos container
                  child: PageView(
                    children: [
                      Image(
                        image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152820.png'),
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152846.png'),
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152918.png'),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  child: Image(image: AssetImage('map.png'),
                  fit: BoxFit.cover),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


