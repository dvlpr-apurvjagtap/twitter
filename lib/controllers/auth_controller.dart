import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future<void> signup({required String email, required String password}) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await db.collection('user').doc(user.user!.uid).set({
        'email': email,
        'password': password,
      });
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }
}
