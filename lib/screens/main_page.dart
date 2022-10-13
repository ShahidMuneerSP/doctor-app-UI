import 'package:doctor_booking_app/screens/bottom_nav.dart';
import 'package:doctor_booking_app/screens/calender_page.dart';
import 'package:doctor_booking_app/screens/doctors_page.dart';
import 'package:doctor_booking_app/screens/home_page.dart';
import 'package:doctor_booking_app/screens/profile_page.dart';
import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final _pages = [
  const HomePage(),
  const DoctorsPage(),
  const CalenderPage(),
  const ProfilePage(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexValueNotifier,
         builder: (BuildContext context, int index, Widget? child) { 
          return _pages[index];
          },

        ),
       bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}