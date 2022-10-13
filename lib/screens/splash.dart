import 'package:doctor_booking_app/screens/signin.dart';
import 'package:doctor_booking_app/screens/signup.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                  height: 720,
                  width: 393,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/doctor.png")))
                  // child: Image.asset("assets/3772188.jpg"),
                  ),
              Positioned(
                left: 0,
                bottom: 100,
                right: 0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 50,
                        width: 393,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.cyan),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ));
                            },
                            child: const Text("Sign Up",
                                style: TextStyle(fontSize: 25))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 50,
                        width: 393,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ));
                            },
                            child: const Text("Sign In",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.black))),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
