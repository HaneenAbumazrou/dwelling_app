import 'package:dwelling_app/Modal/button.dart';
import 'package:dwelling_app/map.dart';
import 'package:flutter/material.dart';

import 'MyProfile.dart';

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
                        child: SizedBox(
                          width: 390,
                          height: 220,
                          child: PageView(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152820.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152846.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/لقطة شاشة 2023-12-14 152918.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
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

                           SizedBox(height: 8,width: 10,),
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
                                  ),
                                ],
                              ),
                              SizedBox(height: 12,width: 50,), // Add this SizedBox for spacing
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
                                  ),
                                ],
                              ),
                              SizedBox(height: 12,width: 50,), // Add this SizedBox for spacing
                              Row(
                                children: [
                                  const Icon(Icons.bed_sharp, color: Colors.white),
                                  Text(
                                    '3 beds in',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Room description:',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                              Text(
                                'Feel at home wherever you choose to live\n with Blueground..... ',
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                              TextButton(onPressed: (){}, child: Text("See more..",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey[200]),)),
                              SizedBox(height: 8,),
                              Text('Roommate Number: 2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 15),
                    const CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/Screenshot 2023-11-30 155041.png'),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mohammad Ahmad',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Map(),
                        ),
                      );                    } ,
                        icon: Icon(Icons.location_on_outlined,size:50 ,color: Color(0xffBD5484),))
                  ],
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    style: buttonPrimary,
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => ProfilePage(),), (route) => false);

                    },
                    child: const Text(
                      'Show Profile', style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
