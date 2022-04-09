// ignore_for_file: prefer_const_constructors

import 'package:dance_styles/home.dart';
import 'package:dance_styles/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      // ignore: avoid_print
      print("Login Page");

      Get.offAll(() => const Login());
    } else {
      Get.offAll(() => const Home());
    }
  }

  Future<void> register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About user", "user message",
          backgroundColor: Color.fromARGB(255, 238, 41, 6),
          snackPosition: SnackPosition.BOTTOM,
          titleText: const Text(
            "Account creation failed!",
            style: TextStyle(color: Colors.white),
          ),
          messageText:
              Text(e.toString(), style: const TextStyle(color: Colors.white)));
    }
  }
}
