import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as latLng;
// import 'package:latlng/latlng.dart' as latLng;
// import 'package:maps_toolkit/maps_toolkit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MapController _controller;

  @override
  Widget build(BuildContext context) {
    print('Start');
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: latLng.LatLng(11.396054,-69.658341),
          zoom: 13,
          swPanBoundary: latLng.LatLng(11.383896330577748, -69.70472296950325),
          nePanBoundary: latLng.LatLng(11.43656441142765, -69.61666068489181)
        ),
        layers: [
          TileLayerOptions(
            tileProvider: AssetTileProvider(),
            urlTemplate: "assets/Coro/{z}/{x}/{y}.png",
            tms: true,
            maxZoom: 18
          ),
        ],
      ),
    );
  }
}
