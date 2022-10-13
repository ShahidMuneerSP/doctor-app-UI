import 'package:flutter/material.dart';

ValueNotifier<int> indexValueNotifier = ValueNotifier(0);
class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexValueNotifier,
       builder: (BuildContext context, int newIndex, Widget? child) {
        return  BottomNavigationBar(
      currentIndex: newIndex,
      elevation: 0,
      onTap: (index){
        indexValueNotifier.value = index;
      },
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      unselectedIconTheme: const IconThemeData(color: Colors.grey),
      type: BottomNavigationBarType.fixed,

      items:const [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.people),label: "Doctors"),
           BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "")
    ]);
         },
       );
  }
}