import 'package:doctor_booking_app/const.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatelessWidget {
  const DoctorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:    Color.fromARGB(255, 180, 185, 215),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Available",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Specialist ",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const Icon(Icons.search),
                Kwidth,
                const Icon(Icons.message),
                Kwidth,
              ],
            ),
            KHight20,
            Kwidth,
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture (1).jpg"))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Dr.Sara Alex",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                             Text("Medicine Specialist ",style: TextStyle(
                              color: Colors.black
                             ),),
              KHight,
              Text(
                "Experiance",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.yellow,),
              ),
              Text("8 Years"),
              KHight,
               Text(
                "Patiants",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.yellow,),
              ),
              Text("66.4K")
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
