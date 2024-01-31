import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'Filtration.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController? _mapController;
  TextEditingController _locationController = TextEditingController();
  Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Stack(
            children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: LatLng(31.9539, 35.9106), // Default map location
                  zoom: 12.0,
                ),
                markers: _markers,
              ),
              Positioned(
                top: 16.0,
                left: 16.0,
                right: 16.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.search),
                                onPressed: () {
                                  _search(context);
                                },
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _locationController,
                                  decoration: InputDecoration(
                                    hintText: 'Search location...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _mapController = controller;
      // Add marker for current location
      _markers.add(
        Marker(
          markerId: MarkerId('currentLocation'),
          position: LatLng(31.9539, 35.9106),
          infoWindow: InfoWindow(
            title: 'Current Location',
            snippet: 'Your current location',
          ),
        ),
      );
    });
  }

  void _search(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FiltrationPage(),
      ),
    );
  }
}

