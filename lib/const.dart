import 'package:flutter/cupertino.dart';
import 'package:form_field_validator/form_field_validator.dart';

const KHight60= SizedBox(height: 60,);

const KHight= SizedBox(height: 10,);

const KHight20= SizedBox(height: 20,);

const KHight30= SizedBox(height: 30,);
final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: "Password is required"),
    MinLengthValidator(8, errorText: "Password must be atleast 8 digits long"),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: "Passwords must have atleast one special character")
  ]
);
const Kwidth= SizedBox(width: 10,);