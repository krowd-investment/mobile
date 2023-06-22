import 'package:flutter/material.dart';

class FirstTime extends StatefulWidget {
  const FirstTime({super.key});
  @override
  State<FirstTime> createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _title(),
              _personInfo(),
            ],
          ),
        ),
      ),
    );
  }
}

Container _title() {
  return Container(
    margin: const EdgeInsets.fromLTRB(5, 30, 15, 10),
    child: const Text(
      'Enter Your Details',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
  );
}

Column _personInfo() {
  var textController = TextEditingController();
  double fem = 1;
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(10),
        padding:
            EdgeInsets.fromLTRB(15 * fem, 8.51 * fem, 173 * fem, 8.49 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff006ed4)),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Full name",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        padding:
            EdgeInsets.fromLTRB(15 * fem, 8.51 * fem, 173 * fem, 8.49 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff006ed4)),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Phone number",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        padding:
            EdgeInsets.fromLTRB(15 * fem, 8.51 * fem, 173 * fem, 8.49 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff006ed4)),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "CCCD",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        padding:
            EdgeInsets.fromLTRB(15 * fem, 8.51 * fem, 173 * fem, 8.49 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff006ed4)),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "Address",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(10),
        padding:
            EdgeInsets.fromLTRB(15 * fem, 8.51 * fem, 173 * fem, 8.49 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff006ed4)),
          borderRadius: BorderRadius.circular(8 * fem),
        ),
        child: TextField(
          controller: textController,
          decoration: const InputDecoration(
            hintText: "DOB",
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.white, width: 1.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
        ),
      ),
      
      const SizedBox(height: 20),
      Container(
        width: 300,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
              image: AssetImage('images/loginbtn.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              //  AuthController.instance
              //           .login(emailController.text, passwordController.text);
            },
            child: const Text(
              "Submit",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    ],
  );
}
