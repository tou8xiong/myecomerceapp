import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myecomerceapp/data/auth/models/user_creation_req.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(UserCreationReq user);
}
//jkjjjj
class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<Either> signup(UserCreationReq user) async {
    try {
      var returnDAta = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: user.Email!,
            password: user.Password!,
          );

      FirebaseFirestore.instance
          .collection("Users")
          .doc(returnDAta.user!.uid)
          .set({
            "FirstName": user.FirstName,
            "LastName": user.LastName,
            "Email": user.Email,
          });
      return Right("Sign up successfully");
    } on FirebaseAuthException catch (e) {
      return Left("Sign up failed");
    }
  }
}
