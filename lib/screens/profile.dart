// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xff272525),
        //   leading: IconButton(
        //       icon:
        //           Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
        //       onPressed: () {
        //         // Navigator.push(context,
        //         //     MaterialPageRoute(builder: (context) => MainScreenOnline()));
        //       }
        //       //onPressed: () => Navigator.of(context).pop(),
        //       ),
        //   title: Text(
        //     'Profile',
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        body: Container(
      // margin: EdgeInsets.only(top: 20),
      color: Color(0xffEBEBEB),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Upload your Photo\nProfile",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
            ),
            // Image.asset(
            //   'assets/person_2.png',
            //   width: 70.0,
            //   height: 70.0,
            //   fit: BoxFit.cover,
            // ),

            // GestureDetector(
            //   onTap: () => _showChoiceDialog(context),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(35.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(20.0),
            //         // shape: BoxShape.circle,
            //       ),
            //       width: 70.0,
            //       height: 70.0,
            //       // color: Colors.green,
            //       child: (imageFile == null)
            //           ? Image.asset(
            //               'assets/person_2.png',
            //               width: 70.0,
            //               height: 70.0,
            //               fit: BoxFit.cover,
            //             )
            //           // Text("Choose Image")
            //           : Image.file(
            //               File(imageFile!.path),
            //               // width: 290,
            //               // height: 120,
            //               fit: BoxFit.cover,
            //             ),
            //     ),
            //   ),
            // ),

            SizedBox(
              height: 10,
            ),

            (imageFile == null)
                ? Column(
                    children: [
                      InkWell(
                        onTap: () => _openGallery(context),
                        child: Center(
                          child: Container(
                            height: 130,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/gallery.jpg",
                                    height: 50,
                                    width: 90,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("From Gallery",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () => _openCamera(context),
                        child: Center(
                          child: Container(
                            height: 130,
                            width: 270,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/images-gallery-icon.png",
                                    height: 50,
                                    width: 90,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("From Camera",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          // shape: BoxShape.circle,
                        ),
                        width: 270.0,
                        height: 260.0,
                        child: Image.file(
                          File(imageFile!.path),
                          // width: 290,
                          // height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xff21ca7d),
                    borderRadius: BorderRadius.circular(5.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 10),
            //   child: Center(
            //     child: Column(
            //       children: [
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "Name",
            //                       style: Theme.of(context).textTheme.bodyText2,
            //                     ),
            //                     Text(
            //                       "Ali",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyText2!
            //                           .copyWith(fontSize: 14),
            //                     )
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "Phone",
            //                       style: Theme.of(context).textTheme.bodyText2,
            //                     ),
            //                     Text(
            //                       "+921234567",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyText2!
            //                           .copyWith(fontSize: 14),
            //                     )
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "Email",
            //                       style: Theme.of(context).textTheme.bodyText2,
            //                     ),
            //                     Text(
            //                       "example@gmail.com",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyText2!
            //                           .copyWith(fontSize: 14),
            //                     )
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "City",
            //                       style: Theme.of(context).textTheme.bodyText2,
            //                     ),
            //                     Text(
            //                       "RawalPindi",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyText2!
            //                           .copyWith(fontSize: 14),
            //                     )
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Column(
            //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Text(
            //                       "DOB",
            //                       style: Theme.of(context).textTheme.bodyText2,
            //                     ),
            //                     Text(
            //                       "1/12/1996",
            //                       style: Theme.of(context)
            //                           .textTheme
            //                           .bodyText2!
            //                           .copyWith(fontSize: 14),
            //                     )
            //                   ],
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "My Income",
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodyText2!
            //                       .copyWith(fontWeight: FontWeight.bold),
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Container(
            //           height: 50,
            //           width: 300,
            //           decoration: BoxDecoration(
            //               color: Colors.white,
            //               borderRadius: BorderRadius.circular(10.0)),
            //           child: Padding(
            //             padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   "Registration Details",
            //                   style: Theme.of(context)
            //                       .textTheme
            //                       .bodyText2!
            //                       .copyWith(fontWeight: FontWeight.bold),
            //                 ),
            //                 Icon(
            //                   Icons.edit,
            //                   color: Theme.of(context).primaryColor,
            //                 )
            //               ],
            //             ),
            //           ),
            //         ),
            //         // ElevatedButton(
            //         //   style: ElevatedButton.styleFrom(
            //         //     primary: Colors.blue,
            //         //     textStyle: const TextStyle(
            //         //       color: Colors.white,
            //         //       fontSize: 18,
            //         //       fontWeight: FontWeight.bold,

            //         //     ),
            //         //   ),
            //         //   onPressed: () => pickImage(ImageSource.camera),
            //         //   child: const Text('Pick Image from Camera'),
            //         // ),
            //         // if (image != null) Image.file(image!)
            //       ],
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    ));
  }

  PickedFile? imageFile = null;
  final ImagePicker imagePicker = ImagePicker();

  File? image;

  // Future<void> _showChoiceDialog(BuildContext context) async {
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    // Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile! as PickedFile?;
    });
    // Navigator.pop(context);
  }

  // File? _image;

  // This is the image picker
  // final _picker = ImagePicker();
  // // Implementing the image picker
  // Future<void> _openImagePicker() async {
  //   final XFile? pickedImage =
  //       await _picker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     setState(() {
  //       _image = File(pickedImage.path);
  //     });
  //   }
  // }

  // pickImage(ImageSource source) async {
  //   XFile? xFileImage = await imagePicker.pickImage(source: source);
  //   if (xFileImage != null) {
  //     image = File(xFileImage.path);
  //     setState(() {});
  //   }
  // }
}
