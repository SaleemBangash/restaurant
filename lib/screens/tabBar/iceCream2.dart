// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewIcream extends StatefulWidget {
  const NewIcream({Key? key}) : super(key: key);

  @override
  _NewIcreamState createState() => _NewIcreamState();
}

class _NewIcreamState extends State<NewIcream> {
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
                //       MaterialPageRoute(builder: ((context) => Strawberry())));
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
                                  "images/sheri-silver-1.png",
                                ),
                                fit: BoxFit.cover),
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
                                        "Ice Cream Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                                    "Caramel",
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
                                      //  CartIcon()
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
                //       MaterialPageRoute(builder: ((context) => Vanilla())));
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
                                  "images/sheri-silver-2.png",
                                ),
                                fit: BoxFit.cover),
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
                                        "Ice Cream Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                                    "Caramel",
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
                                      //  CartIcon()
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
                //       MaterialPageRoute(builder: ((context) => Chocolate())));
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
                                  "images/sheri-silver-3.png",
                                ),
                                fit: BoxFit.cover),
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
                                        "Ice Cream Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      //  // Favourite()
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
                                    "Caramel",
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
                                      //  CartIcon()
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
                //       MaterialPageRoute(builder: ((context) => Strawberry())));
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
                                  "images/sheri-silver-4.png",
                                ),
                                fit: BoxFit.cover),
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
                                        "Ice Cream Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                                    "Caramel",
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
                                      //  CartIcon()
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
                                  "images/sheri-silver-6.png",
                                ),
                                fit: BoxFit.cover),
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
                                        "Ice Cream Box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
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
                                    "Caramel",
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
                                      //  CartIcon()
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
            ],
          )),
    );
  }
}
// GridView.count(
        //   crossAxisSpacing: 15,
        //   mainAxisSpacing: 15,
        //   crossAxisCount: 2,
        //   children: [
        //     InkWell(
        //       onTap: () => Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Vanilla()),
        //       ),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(15.0),
        //             bottomRight: Radius.circular(15.0),
        //           ),
        //         ),
        //         width: width / 2.7,
        //         height: height / 4.45,
        //         child: Card(
        //           color: Colors.grey[200],
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0),
        //           ),
        //           // elevation: 10.0,
        //           child: Stack(
        //             children: [
        //               Stack(
        //                 children: [
        //                   Image.asset(
        //                     "assets/images/sheri-silver-1.png",
        //                     height: 110,
        //                     width: 170,
        //                     fit: BoxFit.cover,
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(0.0),
        //                     child: CircleAvatar(
        //                         backgroundColor: Color(0xffbaa378),
        //                         child: //  CartIcon()),
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.only(
        //                       top: 80,
        //                       left: 110,
        //                     ),
        //                     child:  // Favourite(),
        //                   ),
        //                 ],
        //               ),
        //               // SizedBox(
        //               //   height: 5,
        //               // ),
        //               Padding(
        //                 padding: EdgeInsets.only(
        //                   top: 110,
        //                   left: 50,
        //                 ),
        //                 child: Stack(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(left: 5),
        //                       child: Text(
        //                         "Vanilla", textAlign: TextAlign.center,
        //                         // style: TextStyle(
        //                         //     fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                     // SizedBox(
        //                     //   height: 50,
        //                     // ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top: 15),
        //                       child: Text(
        //                         "20.00SR",
        //                         // style: TextStyle(
        //                         //     // fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     InkWell(
        //       onTap: () => Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Chocolate()),
        //       ),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(15.0),
        //             bottomRight: Radius.circular(15.0),
        //           ),
        //         ),
        //         width: width / 2.7,
        //         height: height / 4.45,
        //         child: Card(
        //           color: Colors.grey[200],
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0),
        //           ),
        //           // elevation: 10.0,
        //           child: Stack(
        //             children: [
        //               Stack(
        //                 children: [
        //                   Image.asset(
        //                     "assets/images/sheri-silver-2.png",
        //                     height: 110,
        //                     width: 170,
        //                     fit: BoxFit.cover,
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(0.0),
        //                     child: CircleAvatar(
        //                         backgroundColor: Color(0xffbaa378),
        //                         child: //  CartIcon()),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 80, left: 110),
        //                     child:  // Favourite(),
        //                   ),
        //                 ],
        //               ),
        //               // SizedBox(
        //               //   height: 5,
        //               // ),
        //               Padding(
        //                 padding: EdgeInsets.only(
        //                   top: 110,
        //                   left: 50,
        //                 ),
        //                 child: Stack(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(right: 10),
        //                       child: Text(
        //                         "Chocolate",
        //                         // style: TextStyle(
        //                         //     fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                     // SizedBox(
        //                     //   height: 50,
        //                     // ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top: 15, left: 5),
        //                       child: Text(
        //                         "20.00SR",
        //                         // style: TextStyle(
        //                         //     // fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     InkWell(
        //       onTap: () => Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Chocolate()),
        //       ),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(15.0),
        //             bottomRight: Radius.circular(15.0),
        //           ),
        //         ),
        //         width: width / 2.7,
        //         height: height / 4.45,
        //         child: Card(
        //           color: Colors.grey[200],
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0),
        //           ),
        //           // elevation: 10.0,
        //           child: Stack(
        //             children: [
        //               Stack(
        //                 children: [
        //                   Image.asset(
        //                     "assets/images/sheri-silver-2.png",
        //                     height: 110,
        //                     width: 170,
        //                     fit: BoxFit.cover,
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(0.0),
        //                     child: CircleAvatar(
        //                         backgroundColor: Color(0xffbaa378),
        //                         child: //  CartIcon()),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 80, left: 110),
        //                     child:  // Favourite(),
        //                   ),
        //                 ],
        //               ),
        //               // SizedBox(
        //               //   height: 5,
        //               // ),
        //               Padding(
        //                 padding: EdgeInsets.only(
        //                   top: 110,
        //                   left: 50,
        //                 ),
        //                 child: Stack(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(),
        //                       child: Text(
        //                         "Chocolate",
        //                         // style: TextStyle(
        //                         //     fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                     // SizedBox(
        //                     //   height: 50,
        //                     // ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top: 15, left: 5),
        //                       child: Text(
        //                         "20.00SR",
        //                         // style: TextStyle(
        //                         //     // fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //     InkWell(
        //       onTap: () => Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => Strawberry()),
        //       ),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: BorderRadius.only(
        //             bottomLeft: Radius.circular(15.0),
        //             bottomRight: Radius.circular(15.0),
        //           ),
        //         ),
        //         width: width / 2.7,
        //         height: height / 4.45,
        //         child: Card(
        //           color: Colors.grey[200],
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0),
        //           ),
        //           // elevation: 10.0,
        //           child: Stack(
        //             children: [
        //               Stack(
        //                 children: [
        //                   Image.asset(
        //                     "assets/images/sheri-silver-7.png",
        //                     height: 110,
        //                     width: 170,
        //                     fit: BoxFit.cover,
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.all(0.0),
        //                     child: CircleAvatar(
        //                         backgroundColor: Color(0xffbaa378),
        //                         child: //  CartIcon()),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(top: 80, left: 110),
        //                     child:  // Favourite(),
        //                   ),
        //                 ],
        //               ),
        //               Padding(
        //                 padding: EdgeInsets.only(
        //                   top: 110,
        //                   left: 50,
        //                 ),
        //                 child: Stack(
        //                   children: [
        //                     Padding(
        //                       padding: const EdgeInsets.only(),
        //                       child: Text(
        //                         "StrawBerry",
        //                         // style: TextStyle(
        //                         //     fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                     // SizedBox(
        //                     //   height: 50,
        //                     // ),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top: 15, left: 5),
        //                       child: Text(
        //                         "20.00SR",
        //                         // style: TextStyle(
        //                         //     // fontSize: text * 14,
        //                         //     fontWeight: FontWeight.bold),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
     