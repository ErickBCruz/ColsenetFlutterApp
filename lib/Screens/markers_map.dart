import 'package:colsenet/Tests/map_marker.dart';
import 'package:colsenet/api_key.dart';
import 'package:colsenet/providers/firebase_provider.dart';
import 'package:colsenet/providers/marker_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:colsenet/Themes/app_theme.dart';

class MarkersMap extends StatefulWidget {
  const MarkersMap({super.key});

  @override
  State<MarkersMap> createState() => _MarkersMapState();
}

class _MarkersMapState extends State<MarkersMap> {
  final FirebaseService _firebaseService = FirebaseService();
  final MarkerBuilder _markerBuilder = MarkerBuilder();

  List<MapMarker> _mapMarkers = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMarkers();
  }

  Future<void> _loadMarkers() async {
    List<MapMarker> markers = await _firebaseService.fetchMarkers();
    setState(() {
      _mapMarkers = markers;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final markers = _markerBuilder.buildMarkers(_mapMarkers, context);

    return FlutterMap(
      options: MapOptions(
        initialCenter: const LatLng(4.13024240968076, -73.6151985856292),
        maxZoom: 17,
        minZoom: 13,
        initialZoom: 14.7,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
          additionalOptions: const {
            'accessToken': ApiKey.MAPBOX_ACCESS_TOKEN,
            'id': MapTheme.MAPBOX_STYLE,
          },
          userAgentPackageName: 'dev.fleaflet.flutter_map.example',
        ),
        MarkerLayer(markers: markers),
      ],
    );
  }
}
