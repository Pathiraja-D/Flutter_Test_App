import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:newapp/components/app_bar.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ToolBar(title: 'NearBy'),
        body: FlutterMap(
          options: MapOptions(
              initialCenter: LatLng(7.8774, 80.7003), initialZoom: 10),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            )
          ],
        ));
  }
}
