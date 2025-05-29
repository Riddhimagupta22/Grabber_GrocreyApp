import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  final FirebaseFirestore _firebaseFItestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _isLoading = false.obs;
  final _isError = false.obs;
  final _errorMessage = ''.obs;
  bool get isLoading => _isLoading.value;
  bool get isError => _isError.value;
  String get errorMessage => _errorMessage.value;

  final _userFirebase = Rxn<User>();
}
