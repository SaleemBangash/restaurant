// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, file_names, unnecessary_new, prefer_typing_uninitialized_variables
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:hotel/screens/tabBar/drinks2.dart';
import 'package:hotel/screens/tabBar/iceCream2.dart';
import 'package:hotel/screens/tabBar/snacks2.dart';
import 'package:hotel/screens/tabBar/soft_drinks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../main.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final _controller = PageController();
  // int _activePage = 0;
  // final PageController _pageViewController =
  //     PageController(initialPage: 0); // set the initial page you want to show
  // int _activePage = 0;  // will hold current active page index value
  //Create a List Holding all the Pages
  // final List<String> _Pages = [
  //   Image.asset(
  //     "assets/images/Image.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/sheri-silver-1.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/sheri-silver-7.png",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   ),
  //   Image.asset(
  //     "assets/images/americano.jpg",
  //     fit: BoxFit.cover,
  //     width: 350,
  //   )
  // ];
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _pageViewController.dispose(); // dispose the PageController
  // }

  // final late _controller;
  final controller = PageController();

  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 1;
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xffF5ECE3),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 07,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 05),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    width: double.infinity,
                    height: 170,
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 170,
                          // pageview
                          child: new PageView(
                            // pageSnapping: false,
                            // padEnds: true,
                            // reverse: true,
                            controller: controller,
                            children: [
                              Image.asset(
                                "images/Image.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "images/sheri-silver-1.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "images/sheri-silver-7.png",
                                fit: BoxFit.cover,
                                width: 350,
                              ),
                              Image.asset(
                                "images/americano.jpg",
                                fit: BoxFit.cover,
                                width: 350,
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 110,
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 4,
                            axisDirection: Axis.horizontal,
                            effect: const SlideEffect(
                              radius: 14,
                              activeDotColor: Color(0xffBAA378),
                              dotHeight: 10,
                              dotColor: Color.fromARGB(255, 223, 208, 176),
                              dotWidth: 30,
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                // validator: (input) {
                //   if (input!.isEmpty) {
                //     return 'Please enter an email';
                //   }
                //   return null;
                // },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'What do you want to Order?',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)
                      // borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  // filled: true,
                  // obsecureText: _isObscure,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                ),
              ),
            ),
            Container(
              height: 25,
              decoration: BoxDecoration(
                // color: Color(0xffbaa378),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TabBar(
                  indicatorColor: Theme.of(context).primaryColor,
                  indicatorWeight: 4,

                  // indicatorSize: TabBarIndicatorSize.tab,
                  //indicatorWeight: 15,
                  // indicatorPadding: const EdgeInsets.all(10),
                  indicatorSize: TabBarIndicatorSize.label,
                  //indicatorColor: Colors.blue,
                  // indicator: BoxDecoration(
                  //   // borderRadius: BorderRadius.circular(16),
                  //   border: Border(
                  //       bottom: BorderSide(
                  //           // color: Colors.black,
                  //           // width: 4.0,
                  //           )),
                  //   // border: Border.all(width: 5, color: Colors.black),
                  //   // color: Color(0xffbaa378)
                  // ),

                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  labelColor: Colors.black,
                  labelStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "ICE CREAM",
                    ),
                    Tab(
                      text: "SOFT DRINKS",
                    ),
                    Tab(
                      text: "SNACKS",
                    ),
                    Tab(
                      text: "DRINKS",
                    )
                  ]),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: height * 0.52,
              child: TabBarView(children: [
                NewIcream(),
                SoftDrinks(),
                NewSnacks(),
                NewDrinks()
              ]),
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// void onTabTapped(int index) {
//    setState(() {
//      _currentIndex = index;
//    });
//  }

