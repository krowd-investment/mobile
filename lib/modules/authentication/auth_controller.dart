import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:krowd_invesment_footer/pages/login/first_time.dart';
import 'package:krowd_invesment_footer/pages/login/signin_page.dart';

import '../../pages/home/dashboard.dart';

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
      debugPrint(user.email);
      Get.offAll(() => DashBoard(email:user.email, index: 0,));
      //  Get.offAll(() => const FirstTime());
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



handleAuthState(){
    return StreamBuilder(
      stream: auth.authStateChanges(),
      builder: (BuildContext context, snapshot){
          if(snapshot.hasData){
            // return const Home();
            return const FirstTime();
          } else {
            return const SignInPage();
          }
      });
  }


  signInWithGoogle() async{
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );

    // Once sign in return the Usercredential
    return await auth.signInWithCredential(credential);
  }
}
