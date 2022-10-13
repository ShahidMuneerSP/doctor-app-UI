import 'dart:convert';

import 'package:doctor_booking_app/const.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Map? mapResponse;
List? listResponse;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future apiResponse() async {
    http.Response resp =
        await http.get(Uri.parse("https://reqres.in/api/users?page=2"));
    if (resp.statusCode == 200) {
      setState(() {
        mapResponse = jsonDecode(resp.body);
        listResponse = mapResponse!["data"];
      });
    }
  }
  @override
  void initState() {
    apiResponse();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 215),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Find Your",
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
            LimitedBox(
              maxHeight: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listResponse == null ? 0: listResponse!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 7, 18, 79),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Looking For Your Desire\n Specialist Doctor ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            KHight30,
                            Row(
                              children: [
                                Text(
                                  listResponse![index]["first_name"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Kwidth,
                                 Text(
                                  listResponse![index]["last_name"],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Text(
                              " Medicine & Heart Specialist",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Good Health Clinic",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            KHight20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16),
                  ),
                  Kwidth,
                ],
              ),
            ),
            KHight30,
            LimitedBox(
              maxHeight: 100,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(8, ((index) {
                    return const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: PediatricianWidget(),
                    );
                  }))),
            ),
            KHight20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Available Doctors",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 16),
                  ),
                  Kwidth,
                ],
              ),
            ),
            KHight30,
            Expanded(
              child: LimitedBox(
                maxHeight: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    8,
                    ((index) {
                      return const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: DoctorDetailsWidget(),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        width: 200,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Dr.Serena Gome ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text("Medicine Specialist "),
              KHight,
              Text(
                "Experiance",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("8 Years"),
              KHight,
              Text(
                "Patiants",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("66.4K")
            ],
          ),
        ));
  }
}
class PediatricianWidget extends StatelessWidget {
  const PediatricianWidget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 40,
                width: 50,
                child: Image.asset("assets/medicine.png")),
            const Text(
              "Pediatrician",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}