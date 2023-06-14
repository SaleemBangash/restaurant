// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewDrinks extends StatefulWidget {
  const NewDrinks({Key? key}) : super(key: key);

  @override
  _NewDrinksState createState() => _NewDrinksState();
}

class _NewDrinksState extends State<NewDrinks> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      backgroundColor: Color(0xffF5ECE3),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              GestureDetector(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: ((context) => CocaCola())));
                // },
                child: Container(
                  height: 110,
                  width: 290,
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   //width: 2,
                      //   color: Colors.black,
                      // ),

                      color: Color(0xffFFF8F0),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/cocaCola.jpg",
                                ),
                                fit: BoxFit.contain),
                            // border: Border.all(
                            //   //width: 2,
                            //   color: Colors.black,
                            // ),
                            color: Color.fromARGB(255, 242, 229, 229),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10),
                        child: VerticalDivider(
                          color: Color(0xffBAA378),
                          thickness: 4,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Cold Drink Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      // Favourite()
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "CocaCola",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "14 SR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // CartIcon()
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 130, top: 120),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Open 24/7",
                  //         style: TextStyle(
                  //             fontSize: text * 15,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // )
                ),
              ),

              SizedBox(
                height: 5,
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: ((context) => Dew())));
                // },
                child: Container(
                  height: 110,
                  width: 290,
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   //width: 2,
                      //   color: Colors.black,
                      // ),

                      color: Color(0xffFFF8F0),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/dew.jpg",
                                ),
                                fit: BoxFit.contain),
                            // border: Border.all(
                            //   //width: 2,
                            //   color: Colors.black,
                            // ),
                            color: Color.fromARGB(255, 242, 229, 229),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10),
                        child: VerticalDivider(
                          color: Color(0xffBAA378),
                          thickness: 4,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Cold Drink Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      // Favourite()
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Dew",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "14 SR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // CartIcon()
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 130, top: 120),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Open 24/7",
                  //         style: TextStyle(
                  //             fontSize: text * 15,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // )
                ),
              ),

              SizedBox(
                height: 5,
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: ((context) => Sprite())));
                // },
                child: Container(
                  height: 110,
                  width: 290,
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   //width: 2,
                      //   color: Colors.black,
                      // ),

                      color: Color(0xffFFF8F0),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/sprite.jpg",
                                ),
                                fit: BoxFit.contain),
                            // border: Border.all(
                            //   //width: 2,
                            //   color: Colors.black,
                            // ),
                            color: Color.fromARGB(255, 242, 229, 229),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10),
                        child: VerticalDivider(
                          color: Color(0xffBAA378),
                          thickness: 4,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Cold Drink Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      // Favourite()
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Sprite",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "14 SR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // CartIcon()
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 130, top: 120),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Open 24/7",
                  //         style: TextStyle(
                  //             fontSize: text * 15,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // )
                ),
              ),

              SizedBox(
                height: 5,
              ),
              GestureDetector(
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: ((context) => RedBull())));
                // },
                child: Container(
                  height: 110,
                  width: 290,
                  decoration: BoxDecoration(

                      // border: Border.all(
                      //   //width: 2,
                      //   color: Colors.black,
                      // ),

                      color: Color(0xffFFF8F0),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/red.jpg",
                                ),
                                fit: BoxFit.contain),
                            // border: Border.all(
                            //   //width: 2,
                            //   color: Colors.black,
                            // ),
                            color: Color.fromARGB(255, 242, 229, 229),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                bottomLeft: Radius.circular(16.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10),
                        child: VerticalDivider(
                          color: Color(0xffBAA378),
                          thickness: 4,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Cold Drink Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      // Favourite()
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "Red Bull",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "14 SR",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      // CartIcon()
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       left: 130, top: 120),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         "Open 24/7",
                  //         style: TextStyle(
                  //             fontSize: text * 15,
                  //             fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // )
                ),
              ),

              SizedBox(
                height: 5,
              ),
              // Container(
              //   height: 110,
              //   width: 290,
              //   decoration: BoxDecoration(

              //       // border: Border.all(
              //       //   //width: 2,
              //       //   color: Colors.black,
              //       // ),

              //       color: Color.fromARGB(255, 242, 229, 229),
              //       borderRadius: BorderRadius.circular(16.0)),
              //   child: Row(
              //     children: [
              //       Container(
              //         height: 120,
              //         width: 110,
              //         decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 image: AssetImage(
              //               "assets/images/cocaCola.jpg",
              //             )),
              //             // border: Border.all(
              //             //   //width: 2,
              //             //   color: Colors.black,
              //             // ),
              //             color: Color.fromARGB(255, 242, 229, 229),
              //             borderRadius: BorderRadius.only(
              // topLeft: Radius.circular(16.0),
              // bottomLeft: Radius.circular(16.0))),
              //       ),
              //       Expanded(
              //         child: Padding(
              //           padding: const EdgeInsets.only(),
              //           child: Column(
              //               mainAxisAlignment: MainAxisAlignment.center,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.symmetric(horizontal: 20),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         "CocaCola",
              //                         style: TextStyle(
              //                             fontWeight: FontWeight.bold),
              //                       ),
              //                       Favourite()
              //                     ],
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 30,
              //                 ),
              //                 Padding(
              //                   padding:
              //                       const EdgeInsets.symmetric(horizontal: 20),
              //                   child: Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Text(
              //                         "14 SR",
              //                         style: TextStyle(),
              //                       ),
              //                       CartIcon()
              //                     ],
              //                   ),
              //                 ),
              //               ]),
              //         ),
              //       )
              //     ],
              //   ),

              //   // Padding(
              //   //   padding: const EdgeInsets.only(
              //   //       left: 130, top: 120),
              //   //   child: Row(
              //   //     children: [
              //   //       Text(
              //   //         "Open 24/7",
              //   //         style: TextStyle(
              //   //             fontSize: text * 15,
              //   //             fontWeight: FontWeight.bold),
              //   //       )
              //   //     ],
              //   //   ),
              //   // )
              // ),
            ],
          )),
    );
  }
}
