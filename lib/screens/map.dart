// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import 'location_provider.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;

  @override
  void dispose() {
    mapController!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Provider.of<LocationProvider>(context, listen: false).initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Map'),
        // ),
        body: googleMapUI()
        // Column(
        //   children: [
        //     //_searchBar(),
        //     Expanded(
        //       child: GoogleMap(
        //         mapType: MapType.normal,
        //         myLocationEnabled: true,
        //         myLocationButtonEnabled: true,
        //         initialCameraPosition: CameraPosition(
        //           target: LatLng(28.7041, 77.1025),
        //           zoom: 18,
        //         ),
        //         onMapCreated: (GoogleMapController controller) async {},
        //       ),
        //     ),
        //   ],
        // ),
        );
  }

  Widget googleMapUI() {
    return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
      if (model.locationPosition != null) {
        return Column(
          children: [
            Expanded(
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: model.locationPosition,
                  zoom: 18,
                ),
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                // markers: Set<Marker>.of(model.markers.values),
                onMapCreated: (GoogleMapController controller) async {
                  // Provider.of<LocationProvider>(context, listen: false)
                  //     .setMapController(controller);
                },
              ),
            ),
          ],
        );
      }

      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}
//       GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.7749, -122.4194), // Initial map location
//           zoom: 12,
//         ),
//       ),
//     );
//   }
// }
