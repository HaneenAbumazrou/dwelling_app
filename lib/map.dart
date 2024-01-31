import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
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
}