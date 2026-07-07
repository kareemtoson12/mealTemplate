// Karim Toson || kareemtoson1@gmail.com || Tue Jul 07 2026 13:28:16

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tempmealapp/features/auth/models/user_model.dart';

class FirebaseDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //signup

  Future<void> signUp(String email, String password, String name) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel userData = UserModel(
        id: userCredential.user!.uid,
        name: name,
        email: email,
        fav: [],
      );

      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(userData.toMap());
    } catch (e) {
      print(e);
    }
  }

  //login
  Future<UserModel> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      DocumentSnapshot userSnapshot = await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();
      return UserModel.fromMap(userSnapshot.data() as Map<String, dynamic>);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
