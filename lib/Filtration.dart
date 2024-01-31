import 'package:flutter/material.dart';

class FiltrationPage extends StatefulWidget {
  @override
  _FiltrationPageState createState() => _FiltrationPageState();
}

class _FiltrationPageState extends State<FiltrationPage> {
  String location = "";
  int roommates = 1;
  double price = 0.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Filtration'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Location'),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      location = value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter location...',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                Text('Number of Roommates: $roommates'),
                Slider(
                  value: roommates.toDouble(),
                  min: 1,
                  max: 10,
                  onChanged: (value) {
                    setState(() {
                      roommates = value.round();
                    });
                  },
                  divisions: 9,
                  label: roommates.toString(),
                ),
                SizedBox(height: 16.0),
                Text('Price: $price'),
                Slider(
                  value: price,
                  min: 0,
                  max: 1000,
                  onChanged: (value) {
                    setState(() {
                      price = value;
                    });
                  },
                  divisions: 100,
                  label: price.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
