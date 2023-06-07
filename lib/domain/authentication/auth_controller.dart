import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krowd_invesment_footer/pages/home/dashboard.dart';
import 'package:krowd_invesment_footer/pages/login/signin_page.dart';

class AuthController extends GetxController {
  //AuthControler.instance...
  static AuthController instance = Get.find();

  //email, password, name...
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => const SignInPage());
    } else {
      print(user.email);
      Get.offAll(() => DashBoard(email:user.email));
    }
  }

  void register(String email, password) async{
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);

    } catch(e) {
      Get.snackbar("About user", "User message",
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      titleText: const Text(
        "Account creation failed",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      messageText: Text(
        e.toString(),
        style: const TextStyle(
          color: Colors.white
        ),
      )
      );
    }
  }

  void login(String emailController, passwordController) async{
    try {
      await auth.signInWithEmailAndPassword(email: emailController, password: passwordController);
    } catch(e) {
      Get.snackbar("About login", "Login message",
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      titleText: const Text(
        "Login failed",
        style: TextStyle(
          color: Colors.white
        ),
      ),
      messageText: Text(
        e.toString(),
        style: const TextStyle(
          color: Colors.white
        ),
      )
      );
    }
  }

  void logout() async{
    await auth.signOut();
  }

  void forgetPassword(String email) async{
    await auth.sendPasswordResetEmail(email: email);
  }
}
