import 'package:latlong2/latlong.dart';

class MapMarker {
  const MapMarker({
    required this.title,
    required this.address,
    required this.location,
  });
  final String title;
  final String address;
  final LatLng location;
}

final _locations = [
  LatLng(4.115074383335092, -73.60819297496197),
  LatLng(4.115136157075193, -73.61084151473719),
  LatLng(4.1170968802448975, -73.61119113167645),
  LatLng(4.126347763311018, -73.61699799069477),
  LatLng(4.113338212666203, -73.60855028561987),
  LatLng(4.1108068357157475, -73.59975907035131),
];

const _path = '../Screens/markers_map.dart';

// ignore: non_constant_identifier_names
final MapMarkers = [

  MapMarker(
    title: 'titulo',
    address: 'exito',
    location: _locations[0],
  ),
  MapMarker(
    title: 'titulo',
    address: 'd1',
    location: _locations[1],
  ),
  MapMarker(
    title: 'titulo',
    address: 'otro',
    location: _locations[2],
  ),

];
