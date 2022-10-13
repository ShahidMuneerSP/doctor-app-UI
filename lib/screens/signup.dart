import 'package:doctor_booking_app/const.dart';
import 'package:doctor_booking_app/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();


  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:    Color.fromARGB(255, 180, 185, 215),
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
          "Sign Up",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignInPage()));
                      },
                      child: const Text("Sign In!"))
                ],
              ),
              KHight20,
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: RequiredValidator(errorText: "Username is required"),
                autofocus: false,
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Username*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.name,
              ),
              KHight20,
              TextFormField(
                validator: EmailValidator(errorText: "Use a valid email!"),
                autofocus: false,
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "email*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.emailAddress,
              ),
              KHight20,
              TextFormField(
                validator:
                    RequiredValidator(errorText: "Phone number is required"),
                autofocus: false,
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Phone No*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.phone,
              ),
              KHight20,
              TextFormField(
                validator: passwordValidator,
                obscureText: true,
                autofocus: false,
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Password*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.visiblePassword,
              ),
              KHight20,
              TextFormField(
                validator: passwordValidator,
                obscureText: true,
                autofocus: false,
                controller: confirmPassController,
                decoration: InputDecoration(
                    hintText: "Confirm Password*",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                keyboardType: TextInputType.visiblePassword,
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
                    
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
