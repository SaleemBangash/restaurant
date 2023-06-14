import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'location_provider.dart';
import 'map.dart';

class LandingMap extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          // ignore: prefer_collection_literals
          child: MapScreen(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MapScreen(),
      ),
    );
  }
}
