import 'package:latlong2/latlong.dart';

class MapMarker {

  final String title;
  final String description;
  final LatLng location;
  final int risk;

  const MapMarker({
    required this.title,
    required this.description,
    required this.location,
    required this.risk,
  });
  
}

final _locations = [
  const LatLng(4.115074383335092, -73.60819297496197),
  const LatLng(4.115136157075193, -73.61084151473719),
  const LatLng(4.1170968802448975, -73.61119113167645),
  const LatLng(4.126347763311018, -73.61699799069477),
  const LatLng(4.113338212666203, -73.60855028561987),
  const LatLng(4.1108068357157475, -73.59975907035131),

  const LatLng(4.128668985898988, -73.63768500943492),
  const LatLng(4.1501365367748475, -73.63631827938111),
  const LatLng(4.151771954694709, -73.63690591221419),
  const LatLng(4.152583891914292, -73.62668249363261),
];

// ignore: unused_element
const _path = '../Screens/markers_map.dart';

// ignore: non_constant_identifier_names
final MapMarkers = [
  
  MapMarker(
    title: 'Robo con fuerza',
    description: 'robo con vehículo, no presenta placas, uso de arma de fuego, uso de sustancias sedantes, 4 personas involucradas',
    location: _locations[0],
    risk: 1,
  ),
  MapMarker(
    title: 'Asalto a transeúnte',
  description: 'Robo de pertenencias personales en vía pública, amenaza con arma blanca, una persona involucrada, víctima ilesa.',
    location: _locations[1],
    risk: 1,
  ),
  MapMarker(
    title: 'Intento de robo a negocio',
  description: 'Persona intentó sustraer mercancía de una tienda de conveniencia, guardia de seguridad alertado, sospechoso huyó del lugar.',
    location: _locations[2],
    risk: 1,
  ),
  MapMarker(
    title: 'Robo en transporte público',
  description: 'Grupo de tres personas roba pertenencias de los pasajeros en un autobús, uso de armas blancas, sin heridos reportados.',
    location: _locations[3],
    risk: 2,
  ),
  MapMarker(
    title: 'Asesinato en zona residencial',
    description: 'Persona fallecida en el lugar debido a disparos, agresores desconocidos huyeron, sin información de los involucrados.',
    location: _locations[4],
    risk: 3,
  ),
  MapMarker(
    title: 'Robo de motocicleta',
  description: 'Motocicleta estacionada fue robada en zona de parqueaderos durante la madrugada, testigos reportaron dos individuos en el área, vehículo sin rastrear.',
    location: _locations[5],
    risk: 1,
  ),

];
