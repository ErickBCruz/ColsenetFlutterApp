// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colsenet/Tests/map_marker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:colsenet/Themes/app_theme.dart';
import 'package:colsenet/api_key.dart';


// ignore: constant_identifier_names
const MAPBOX_ACCESS_TOKEN = ApiKey.MAPBOX_ACCESS_TOKEN;
// ignore: constant_identifier_names
const MAPBOX_STYLE = MapTheme.MAPBOX_STYLE;
// ignore: constant_identifier_names
const MARKER_COLOR = AppColor.secundary;


// ignore: prefer_const_constructors
final _currentLocation = LatLng(4.13024240968076, -73.6151985856292);

class MarkersMap extends StatelessWidget {
  const MarkersMap({super.key});

  // ignore: avoid_print
    //MapMarker marker = new MapMarker(title: "titulo", description:  "Marker", location: LatLng(1, 1));
    
    
    List<Marker> _buildMarkers(BuildContext context) {
      // ignore: no_leading_underscores_for_local_identifiers
      final _markerList = <Marker> [];
      for (int i = 0; i < MapMarkers.length; i++) {
        final mapItem = MapMarkers[i];
        _markerList.add(
          Marker(
            height: 15,
            width: 15,
            point: mapItem.location,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(mapItem.title, style: const TextStyle(color: AppColor.secundary, fontSize: 25.0, fontWeight: FontWeight.bold),),
                    content: Text(mapItem.description, style: const TextStyle(color: AppColor.complement, fontSize: 10.0, fontWeight: FontWeight.normal),),
                    backgroundColor: AppColor.primary,
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Cerrar', style: const TextStyle(color: AppColor.secundary, fontSize: 15.0, fontWeight: FontWeight.bold),),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                color: MARKER_COLOR,
                shape: BoxShape.circle,
              ),
            ),
          ),
          ),
        );
      }
      return _markerList;
    }
    
    //print (marker.description);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _markers = _buildMarkers(context);
    
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
        MarkerLayer(
          markers: [
            ///pruebas
            Marker(
              height: 15,
              width: 15,
              point: _currentLocation,
              child: Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 0, 184),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        MarkerLayer(
          markers: _markers,
        ),
        // Marker(
        // height: 15,
        // width: 15,
        // point: const LatLng(4.113338212666203, -73.60855028561987), child: Container(
        //   height: 15,
        //   width: 15,
        //   decoration: const BoxDecoration(
        //     color: AppColor.secundary,
        //     shape: BoxShape.circle,
        //   ),
        // ), ),
        // const Marker(
        // height: 15,
        // width: 15,
        // point: LatLng(4.1108068357157475, -73.59975907035131), child: 
        //   LocationMarker(),
        //   ),
      ] 
    );
    
  }
}

class EventWidget extends StatefulWidget {
  const EventWidget({super.key});

  @override
  State<EventWidget> createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {

  @override
  void initState() {
    // Initialize the state
    super.initState();
    getEvents();
  }

  void getEvents() async {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('events');

    QuerySnapshot events = await collectionReference.get();

    if (events.docs.isNotEmpty) {
      
      for (var doc in events.docs){
        debugPrint(doc.data().toString());
      }

    } 

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// class LocationMarker extends StatelessWidget {
//   const LocationMarker({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//               height: 15,
//               width: 15,
//               decoration: const BoxDecoration(
//                 color: Color.fromARGB(255, 255, 0, 200),
//                 shape: BoxShape.circle,
//               ),
//             );
//   }
// }

