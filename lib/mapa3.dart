import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);

  @override
  _Mapa3State createState() => _Mapa3State();
}

class _Mapa3State extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 3'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/atlas/{z}/{x}/{y}.png?apikey=333762c2807f4c758ea41140ce36e08e',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -102.4194),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black87),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
