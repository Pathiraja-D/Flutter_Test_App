import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:newapp/components/app_bar.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ToolBar(title: 'NearBy'),
        body: FlutterMap(
          options: const MapOptions(
              initialCenter: LatLng(7.8774, 80.7003), initialZoom: 50),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.ces.flutter',
            ),
            const MarkerLayer(
              markers: [
                Marker(
                    height: 80,
                    width: 80,
                    point: LatLng(7.8774, 80.7003),
                    child: Column(
                      children: [
                        Text(
                          "username",
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
