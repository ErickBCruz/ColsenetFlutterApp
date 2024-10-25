import 'package:colsenet/Tests/map_marker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:colsenet/Themes/app_theme.dart';
import 'package:colsenet/api_key.dart';


// ignore: constant_identifier_names
const MAPBOX_ACCESS_TOKEN = ApiKey.MAPBOX_ACCESS_TOKEN;
// ignore: constant_identifier_names
const MAPBOX_STYLE = ApiKey.MAPBOX_STYLE;
// ignore: constant_identifier_names
const MARKER_COLOR = AppColor.secundary;


// ignore: prefer_const_constructors
final _currentLocation = LatLng(4.13024240968076, -73.6151985856292);

class MarkersMap extends StatelessWidget {
  const MarkersMap({super.key});

  
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: _currentLocation,
        maxZoom: 17,
        minZoom: 13,
        initialZoom: 14.7,
      ),
      
      children: [
        TileLayer(
          urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
          additionalOptions: const {
            'accessToken': MAPBOX_ACCESS_TOKEN,
            'id': MAPBOX_STYLE,
          },
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(markers:[
          ///pruebas
          Marker(
            point: _currentLocation, child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColor.secundary,
                shape: BoxShape.circle,
              ),
            ), ),
            Marker(
            point: const LatLng(4.115074383335092, -73.60819297496197), child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColor.secundary,
                shape: BoxShape.circle,
              ),
            ), ),
            Marker(
            point: const LatLng(4.115136157075193, -73.61084151473719), child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColor.secundary,
                shape: BoxShape.circle,
              ),
            ), ),
            Marker(
            point: const LatLng(4.1170968802448975, -73.61119113167645), child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColor.secundary,
                shape: BoxShape.circle,
              ),
            ), ),
            Marker(
            point: const LatLng(4.126347763311018, -73.61699799069477), child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: AppColor.secundary,
                shape: BoxShape.circle,
              ),
            ), ),
        ] )
      ],
    );
  }
}

