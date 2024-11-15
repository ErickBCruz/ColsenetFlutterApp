import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getEvents() async {
  List event = [];

  CollectionReference collectionReferenceEvent = db.collection('event');

  QuerySnapshot queryEvent = await collectionReferenceEvent.get();

  for (var doc in queryEvent.docs) {
    event.add(doc.data());
  }

  return event;
}