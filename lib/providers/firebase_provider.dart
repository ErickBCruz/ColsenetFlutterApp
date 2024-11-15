import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:colsenet/Tests/map_marker.dart';

class FirebaseService {
  Future<List<MapMarker>> fetchMarkers() async {
    List<MapMarker> markers = [];
    try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('event');

      QuerySnapshot querySnapshot = await collectionReference.get();

      for (var doc in querySnapshot.docs) {
        MapMarker marker = MapMarker(
          title: doc['title'].toString(),
          description: doc['description'].toString(),
          location: LatLng(doc['lat'], doc['lng']),
          risk: doc['risk'],
        );
        markers.add(marker);
      }
    } catch (e) {
      debugPrint('Error fetching data from Firestore: $e');
    }
    return markers;
  }
}
