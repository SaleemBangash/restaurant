// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:async';

import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;
  @override
  // void initState() {
  //   _load();
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   sizeConfig = SizeConfig.init(context);
  //   super.didChangeDependencies();
  // }

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();
    _load();
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/rest.jpg"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Restaurant Management System",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, color: Color(0xff21ca7d),),
            ),
            // Container(
            //   margin: EdgeInsets.all(20),
            //   child: LinearProgressIndicator(
            //     backgroundColor: Colors.grey,
            //     color: Colors.green,
            //     minHeight: 5,
            //     value: value,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  _load() {
    Future.delayed(const Duration(milliseconds: 6000), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
    });
  }

  // void downloadData() {
  //   new Timer.periodic(Duration(seconds: 1), (Timer timer) {
  //     setState(() {
  //       if (value == 1) {
  //         timer.cancel();
  //       } else {
  //         value = value + 0.1;
  //       }
  //     });
  //   });
  // }
}
