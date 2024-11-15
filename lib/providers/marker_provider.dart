import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:colsenet/Themes/app_theme.dart';
import 'package:colsenet/Tests/map_marker.dart';

class MarkerBuilder {
  List<Marker> buildMarkers(List<MapMarker> mapMarkers, BuildContext context) {
    return mapMarkers.map((mapItem) {
      return Marker(
        height: 15,
        width: 15,
        point: mapItem.location,
        child: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    mapItem.title,
                    style: const TextStyle(
                      color: AppColor.secundary,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  icon: Icon(
                    mapItem.risk == 1
                        ? Icons.sentiment_neutral_outlined
                        : mapItem.risk == 2
                            ? Icons.sentiment_dissatisfied_outlined
                            : Icons.sentiment_very_dissatisfied_sharp,
                    color: mapItem.risk == 1
                        ? Colors.yellow
                        : mapItem.risk == 2
                            ? Colors.orange
                            : Colors.red,
                    size: 80.0,
                  ),
                  content: Text(
                    mapItem.description,
                    style: const TextStyle(
                      color: AppColor.complement,
                      fontSize: 10.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  backgroundColor: AppColor.primary,
                  actions: <Widget>[
                    TextButton(
                      child: const Text(
                        'Cerrar',
                        style: TextStyle(
                          color: AppColor.secundary,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: Icon(
            Icons.location_on,
            color: mapItem.risk == 1
                ? Colors.yellow
                : mapItem.risk == 2
                    ? Colors.orange
                    : Colors.red,
            size: 30.0,
          ),
        ),
      );
    }).toList();
  }
}
