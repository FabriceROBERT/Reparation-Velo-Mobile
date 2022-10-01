// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:first/models/user.dart';

// class AuthentificationService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   AppUser _userFromFirebase(User user) {
//     return user != null ? AppUser(uid: user.uid) : null;
//   }

//   Stream<AppUser> get user {
//     return _auth.authStateChanges().map(_userFromFirebaseUser);
//   }

//   Future signInWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       User user = result.user;
//       return _userFromFirebaseUser(user);
//     } catch (exception) {
//       print(exception.toString());
//       return null;
//     }
//   }

//   Future registerWithEmailAndPassword(String email, String password) async {
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       User user = result.user;
//       return user;
//     } catch (exception) {
//       print(exception.toString());
//       return null;
//     }
//   }

//   Future signOut() async {
//     try {
//       return await _auth.signOut();
//     } catch (exception) {
//       print(exception.toString());
//       return null;
//     }
//   }
// }
