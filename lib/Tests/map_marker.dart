import 'package:latlong2/latlong.dart';

class MapMarker {

  final String title;
  final String description;
  final LatLng location;

  const MapMarker({
    required this.title,
    required this.description,
    required this.location,
  });
  
}

final _locations = [
  const LatLng(4.115074383335092, -73.60819297496197),
  const LatLng(4.115136157075193, -73.61084151473719),
  const LatLng(4.1170968802448975, -73.61119113167645),
  const LatLng(4.126347763311018, -73.61699799069477),
  const LatLng(4.113338212666203, -73.60855028561987),
  const LatLng(4.1108068357157475, -73.59975907035131),
];

const _path = '../Screens/markers_map.dart';

// ignore: non_constant_identifier_names
final MapMarkers = [

  MapMarker(
    title: 'titulo',
    description: 'exito',
    location: _locations[0],
  ),
  MapMarker(
    title: 'titulo',
    description: 'd1',
    location: _locations[1],
  ),
  MapMarker(
    title: 'titulo',
    description: 'otro',
    location: _locations[2],
  ),
  MapMarker(
    title: 'titulo',
    description: 'viva',
    location: _locations[3],
  ),
  MapMarker(
    title: 'titulo',
    description: 'alkosto',
    location: _locations[4],
  ),
  MapMarker(
    title: 'titulo',
    description: 'primavera',
    location: _locations[5],
  ),

];