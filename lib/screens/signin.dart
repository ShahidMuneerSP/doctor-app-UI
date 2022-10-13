import 'package:doctor_booking_app/const.dart';
import 'package:doctor_booking_app/screens/home_page.dart';
import 'package:doctor_booking_app/screens/main_page.dart';
import 'package:doctor_booking_app/screens/signup.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 215),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "Sign In",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ));
                    },
                    child: const Text("Sign Up!"))
              ],
            ),
            KHight20,
            TextFormField(
              autofocus: false,
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "Email*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            KHight20,
            TextFormField(
              obscureText: true,
              autofocus: false,
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password*",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              keyboardType: TextInputType.emailAddress,
            ),
            KHight20,
            TextButton(
                onPressed: () {}, child: const Text("Forgot your Password?")),
            KHight20,
            SizedBox(
              height: 40,
              width: 390,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 37, 154, 213))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ));
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
