// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';

// class LocationProvider with ChangeNotifier {
//   late BitmapDescriptor _pinLocationIcon;
//   late Map<MarkerId, Marker> _markers;
//   Map<MarkerId, Marker> get markers => _markers;
//   final MarkerId markerId = MarkerId("1");

//   late GoogleMapController _mapController;
//   GoogleMapController get mapController => _mapController;

//   late Location _location;
//   Location get location => _location;
//   BitmapDescriptor get pinLocationIcon => _pinLocationIcon;

//   late LatLng _locationPosition;
//   LatLng get locationPosition => _locationPosition;

//   bool locationServiceActive = true;

//   LocationProvider() {
//     _location = new Location();
//     _markers = <MarkerId, Marker>{};
//   }

//   initialization() async {
//     await getUserLocation();
//     await setCustomMapPin();
//   }

//   getUserLocation() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;

//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }

//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//     location.onLocationChanged.listen(
//       (LocationData currentLocation) {
//         _locationPosition = LatLng(
//           currentLocation.latitude ?? 0.0,
//           currentLocation.longitude ?? 0.0,
//         );

//         print(_locationPosition);

//         _markers.clear();

//         Marker marker = Marker(
//           markerId: markerId,
//           position: LatLng(
//             _locationPosition.latitude,
//             _locationPosition.longitude,
//           ),
//           icon: pinLocationIcon,
//           draggable: true,
//           onDragEnd: ((newPosition) {
//             _locationPosition = LatLng(
//               newPosition.latitude,
//               newPosition.longitude,
//             );

//             notifyListeners();
//           }),
//         );

//         _markers[markerId] = marker;

//         notifyListeners();
//       },
//     );
//   }

//   setMapController(GoogleMapController controller) {
//     _mapController = controller;
//     notifyListeners();
//   }

//   setCustomMapPin() async {
//     _pinLocationIcon = await BitmapDescriptor.fromAssetImage(
//       ImageConfiguration(devicePixelRatio: 2.5),
//       'assets/destination_map_marker.png',
//     );
//   }

//   takeSnapshot() {
//     return _mapController.takeSnapshot();
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationProvider with ChangeNotifier {
  // late BitmapDescriptor _pinLocationIcon;
  // BitmapDescriptor get pinLocationIcon => _pinLocationIcon;
  // late Map<MarkerId, Marker> _markers;
  // Map<MarkerId, Marker> get markers => _markers;

  // final MarkerId markerId = const MarkerId("1");

  Location? _location;
  Location? get location => _location;
  LatLng _locationPosition = LatLng(0, 0);
  LatLng get locationPosition => _locationPosition;

  bool locationServiceActive = true;

  LocationProvider() {
    _location = new Location();
    // _markers = <MarkerId, Marker>{};
  }

  initialization() async {
    await getUserLocation();
    // await setCustomMapPin();
  }

  getUserLocation() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location!.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location!.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location!.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location!.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    location!.onLocationChanged.listen(
      (LocationData currentLocation) {
        _locationPosition = LatLng(
          currentLocation.latitude ?? 0.0,
          currentLocation.longitude ?? 0.0,
        );

        print(_locationPosition);
        notifyListeners();

        // _markers.clear();
        // _markers = <MarkerId, Marker>{};
        // Marker marker = Marker(
        //   markerId: markerId,
        //   position: LatLng(
        //     _locationPosition.latitude,
        //     _locationPosition.longitude,
        //   ),
        //   icon: pinLocationIcon,
        //   draggable: true,
        //   onDragEnd: ((newPosition) {
        //     _locationPosition = LatLng(
        //       newPosition.latitude,
        //       newPosition.longitude,
        //     );

        //     notifyListeners();
        //   }),
        // );

        // _markers[markerId] = marker;

        // notifyListeners();
      },
    );
  }

  // setCustomMapPin() async {
  //   _pinLocationIcon = await BitmapDescriptor.fromAssetImage(
  //       const ImageConfiguration(devicePixelRatio: 2.5), "assets/dest.png");
  // }
}
