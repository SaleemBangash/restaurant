// import 'package:firebase_auth/firebase_auth.dart';

// class AuthenticationServices {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//  Future createNewUser(String name, String email, String password) async {
//     try {
//       AuthResult result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       FirebaseUser user = result.user;
//       await databaseman.createUserData(name, 'Male', 100, user.uid);
//       return user;
//     } catch (e) {
//       print(e.toString());
//     }
//   }

// // sign with email and password

//   Future loginUser(String email, String password) async {
//     try {
//       AuthResult result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return result.user;
//     } catch (e) {
//       print(e.toString());
//     }
//   }

// // signout

// }
